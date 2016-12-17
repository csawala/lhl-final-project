class UpdateOrgsDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :description, :string
  end
end
