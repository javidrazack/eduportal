class Addfacultytosubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :faculty_name, :string
  end
end
