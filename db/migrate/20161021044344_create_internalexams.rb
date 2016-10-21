class CreateInternalexams < ActiveRecord::Migration[5.0]
  def change
    create_table :internalexams :primary_key =>admission_no do |t|
      t.references :admission_no
      t.integer :exam1
      t.integer :exam2

      t.timestamps
    end
  end
end
