class CreateSems < ActiveRecord::Migration[5.0]
  def change
    create_table :sems do |t|
      t.integer :sem_id
      t.integer :sem_no

      t.timestamps
    end
  end
end
