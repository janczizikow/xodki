class AddKmlToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :kml, :string
  end
end
