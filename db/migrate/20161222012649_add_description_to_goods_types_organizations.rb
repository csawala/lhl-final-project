class AddDescriptionToGoodsTypesOrganizations < ActiveRecord::Migration[5.0]
  def change
    remove_column :goods_types_organizations, :goods_type_id
    remove_column :goods_types_organizations, :organization_id
    add_column :goods_types_organizations, :description, :string
    add_column :goods_types_organizations, :active, :boolean

    change_table :goods_types_organizations do |t|
      t.references :organization
      t.references :goods_type
    end
  end

  def down
    add_column :goods_types_organizations, :goods_type_id
    add_column :goods_types_organizations, :organization_id
  end


end