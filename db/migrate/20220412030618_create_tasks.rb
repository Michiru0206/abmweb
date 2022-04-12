class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :status
      t.date :due

      t.timestamps
    end
  end
end
