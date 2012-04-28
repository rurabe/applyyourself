class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :program
      t.string :admissions_url
      t.string :app_url
      t.datetime :deadline
      t.integer :rank

      t.timestamps
    end
  end
end
