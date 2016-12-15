class CreateOrgCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :org_categories do |t|
      t.string :name
      t.references :organization, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.timestamps
      t.boolean :offers
      t.boolean :needs
    end
  end
end
