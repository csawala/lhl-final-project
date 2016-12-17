class CreateGoodsTypesOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :goods_types_organizations do |t|
      t.integer :organization_id
      t.integer :goods_type_id
      t.boolean :offers
      t.boolean :needs
      t.boolean :urgent
      t.timestamps
    end
  end
end
