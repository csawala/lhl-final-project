class AddUserPasswordColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password_digest, :string, default: true
    # cleanup unused tables for 'needs'
    drop_table :org_needs
    drop_table :needs
  end
end
