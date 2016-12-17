class Category < ApplicationRecord
  has_and_belongs_to_many :organizations
  # has_many :organizations_categories
  # has_many :organizations, through: :organizations_categories
end
