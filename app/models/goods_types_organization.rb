class GoodsTypesOrganization < ApplicationRecord

  belongs_to :goods_type
  belongs_to :organization

  before_save :default_values

  validates :description, presence: true

  def matches
    GoodsTypesOrganization
      .where(goods_type_id: goods_type_id)
      .where.not(organization_id: organization_id,
                           needs: needs)
      # needs and offers will never both be true, therefore looking for !needs
  end

  def match_url
    type = needs ? 'offers' : 'needs'
    goods_name = goods_type.name.split(' ').join('+')

    "/#{type}/?goods_types%5B%5D=#{goods_name}&exclude=#{organization_id}"
  end

  protected

  def default_values
    self.needs  ||= false
    self.offers ||= false
    self.urgent ||= false
  end

  def self.create_with_params(params)
    @new_card = self.new
    # params[:type] is either 'offers' or 'needs'
    @new_card[params[:type]]  = true

    @new_card.organization_id = params[:org_id]
    @new_card.goods_type_id   = params[:goods_type].to_i
    @new_card.description     = params[:description]
    @new_card.urgent          = params[:setactive] ? true : false

    @new_card
  end

  def self.filter_by_params(params)
    return all unless params.present?

    by_goods_types(params[:goods_types], params[:exclude])
      .by_urgent(params[:urgent])
  end

  def self.by_urgent(urgent)
    return all unless urgent.present?

    where(urgent: true)
  end

  def self.by_goods_types(types, org_id)
    return all unless types.present?

    if !org_id
      joins(:goods_type).where(goods_types: { name: types }).uniq
    else
      joins(:goods_type).where(goods_types: { name: types }).where.not(organization_id: org_id).uniq
    end
  end
end