class AddDescriptionToGoodsTypesOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :goods_types_organizations, :description, :string
    add_column :goods_types_organizations, :active, :boolean
  end
end
