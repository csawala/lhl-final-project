class CreateOrgCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :org_categories do |t|

      t.references :organization, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.boolean    :offers
      t.boolean    :needs

      t.timestamps null:false
    end
  end
end
