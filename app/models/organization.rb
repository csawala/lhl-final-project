class Organization < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :goods_types_organizations
  has_many :goods_types, through: :goods_types_organizations
end
