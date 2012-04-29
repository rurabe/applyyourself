class AddTuitiontoSchools < ActiveRecord::Migration
  def up
    add_column :schools, :units, :integer
    add_column :schools, :costperunit, :integer
    add_column :schools, :fees, :integer
  end

  def down
  end
end
