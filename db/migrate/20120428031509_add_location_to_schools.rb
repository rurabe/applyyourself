class AddLocationToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :location, :string
    add_column :schools, :units, :integer
    add_column :schools, :costperunit, :integer
    add_column :schools, :fees, :integer
  end
end
