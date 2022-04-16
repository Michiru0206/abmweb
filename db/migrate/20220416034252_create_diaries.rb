class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.date :writing_date
      t.string :title

      t.timestamps
    end
  end
end
