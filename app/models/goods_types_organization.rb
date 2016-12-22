class GoodsTypesOrganization < ApplicationRecord
  belongs_to :goods_type
  belongs_to :organization

  before_save :default_values

  def default_values
    self.needs  ||= false
    self.offers ||= false
    self.urgent ||= false
    self.active ||= true
  end
end