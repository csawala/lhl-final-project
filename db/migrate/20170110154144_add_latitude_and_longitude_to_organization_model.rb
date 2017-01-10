class AddLatitudeAndLongitudeToOrganizationModel < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :latitude, :float
    add_column :organizations, :longitude, :float
  end
end
