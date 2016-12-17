class GoodsType < ApplicationRecord
  has_many :goods_types_organizations
  has_many :organizations, through: :goods_types_organizations
end
