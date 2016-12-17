class CreateCategoriesOrganizations < ActiveRecord::Migration[5.0]
  # fixing naming to be railsy... no more org_categories
  # this way we can reference cat's directly from organizations
  def up
    drop_table :org_categories
    create_table :categories_organizations do |t|
      t.integer :organization_id
      t.integer :category_id
      t.timestamps
    end
    # these columns previously in org_categories, actually fit in goods_types
    change_table :goods_types do |t|
      t.boolean :offers
      t.boolean :needs
    end
  end

  def down
    drop_table :categories_organizations
  end
end
