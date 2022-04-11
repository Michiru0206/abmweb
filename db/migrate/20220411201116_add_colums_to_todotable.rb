class AddColumsToTodotable < ActiveRecord::Migration[6.1]
  def change
    add_column :todotables, :task, :text
    add_column :todotables, :due_date, :date
    add_column :todotables, :status, :text
  end
end
