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
    # byebug
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