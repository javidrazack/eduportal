class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|

      t.string     :admission_no
      t.string     :class_roll_no
      t.date       :admission_date

      t.string     :first_name
      t.string     :middle_name
      t.string     :last_name

      t.references :batch
      t.date       :date_of_birth
      t.string     :gender
      t.string     :blood_group
      t.references :student_category

      t.string     :address_line1
      t.string     :address_line2
      t.string     :city
      t.string     :state
      t.string     :pin_code
      t.string     :phone1
      t.timestamps
    end
  end
end
