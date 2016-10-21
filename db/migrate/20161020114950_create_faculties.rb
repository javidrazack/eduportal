class CreateFaculties < ActiveRecord::Migration[5.0]
  def change
    create_table :faculties do |t|
      t.integer :faculty_id
      t.text :name
      t.references :subID
      t.timestamps
    end
  end
end
