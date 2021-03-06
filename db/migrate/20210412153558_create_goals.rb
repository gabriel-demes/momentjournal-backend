class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.boolean :completed
      t.belongs_to :goallist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
