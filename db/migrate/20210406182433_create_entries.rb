class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.belongs_to :journal, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.decimal :sentiment

      t.timestamps
    end
  end
end
