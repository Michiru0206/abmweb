class AddContentToDiaries < ActiveRecord::Migration[6.1]
  def change
    add_column :diaries, :content, :text
  end
end
