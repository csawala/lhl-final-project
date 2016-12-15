class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|

      t.string      :name
      t.string      :address
      t.string      :suite
      t.string      :city
      t.string      :postal
      t.string      :province
      t.string      :country
      t.string      :email
      t.bigint      :primaryphone
      t.bigint      :secondaryphone
      t.string      :url
      t.string      :orgtype
      t.references  :user, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
