class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.datetime :due_date
      t.string :name
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
