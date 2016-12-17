class UpdateOrgCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :org_categories, :offers, :boolean
    remove_column :org_categories, :needs, :boolean
  end
end
