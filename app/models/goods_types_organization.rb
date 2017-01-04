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

  def self.create_with_params(params)
    @new_gto = self.new
    @new_gto.organization_id = params[:org_id]
    @new_gto.goods_type_id   = params[:goods_type].to_i
    @new_gto.description     = params[:description]

    @new_gto
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