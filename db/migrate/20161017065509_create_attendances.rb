class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.references :student
      t.string :no_of_hours
      t.references :subID
      t.boolean :present, :default => true
      t.timestamps
    end
  end
end
