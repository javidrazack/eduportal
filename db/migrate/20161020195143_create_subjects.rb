class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.integer :subID
      t.string :Name
      t.integer :sem

      t.timestamps
    end
  end
end
