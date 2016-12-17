class CreateOrgNeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :org_needs do |t|
      t.boolean :offers
      t.boolean :needs
      t.references :need, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
    end
  end
end
