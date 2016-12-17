class GoodsTypesOrganization < ApplicationRecord
  belongs_to :goods_type
  belongs_to :organization
end