class CreateInternalexams < ActiveRecord::Migration[5.0]
  def change
    create_table :internalexams do |t|
      t.integer :admission_no
      t.integer :exam1
      t.integer :exam2

      t.timestamps
    end
  end
end
