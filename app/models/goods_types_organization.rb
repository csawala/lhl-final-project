class GoodsTypesOrganization < ApplicationRecord

  belongs_to :goods_type
  belongs_to :organization

  before_save :default_values

  validates :description, presence: true

  protected


  def default_values
    self.needs  ||= false
    self.offers ||= false
    self.urgent ||= false
  end

  def self.updatecard(card_id, params)
    # something like (works in rails console!):
    @org.goods_types_organizations.find(card_id)
    # @card.active ? @card.active = false : @card.active = true
  end

  def self.create_with_params(params)
    @new_card = self.new
    @new_card.organization_id = params[:org_id]
    @new_card.goods_type_id   = params[:goods_type].to_i
    @new_card.description     = params[:description]

    @new_card
  end

  def self.filter_by_params(params)
    return all unless params.present?

    by_goods_types(params[:goods_types])
  end

  def self.by_goods_types(types)
    return all unless types.present?

    joins(:goods_type).where(goods_types: { name: types }).uniq
  end
end