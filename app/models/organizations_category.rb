class OrganizationsCategory < ApplicationRecord
  belongs_to :organization
  belongs_to :category
end
