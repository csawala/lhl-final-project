class AddDefaultValueOnActiveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :goods_types_organizations, :active
    add_column :goods_types_organizations, :active, :boolean, default: true
  end
end