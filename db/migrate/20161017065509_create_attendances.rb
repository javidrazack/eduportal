class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances :foreign_key => :admission_no do |t|
      t.references :admission_no
      t.integer :no_of_hours
      t.references :subID
      t.boolean :present, :default => true
      t.timestamps
    end
  end
end
