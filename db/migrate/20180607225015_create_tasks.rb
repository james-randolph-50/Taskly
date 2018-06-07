class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.datetime :due_date
      t.string :task
      t.string :tags

      t.timestamps
    end
  end
end
