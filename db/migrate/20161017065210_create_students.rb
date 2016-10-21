class CreateStudents < ActiveRecord::Migration[5.0]
  def self.up
    create_table :students :primary_key =>:admission_no do |t|

      t.string     :admission_no, null: false
      t.integer    :class_roll_no, null: false
      t.string     :first_name, null: false
      t.string     :middle_name
      t.string     :last_name, null: false

      t.references :Sem, null: false
      t.date       :date_of_birth, null: false
      t.string     :gender, null: false
      t.string     :blood_group, null: false

      t.string     :address_line1, null: false
      t.string     :address_line2
      t.string     :city, null: false
      t.string     :state, null: false
      t.string     :pin_code, null: false
      t.string     :phone1, null: false
      t.timestamps
    end
  end
end
