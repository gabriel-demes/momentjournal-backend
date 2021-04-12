class CreateGoallists < ActiveRecord::Migration[6.1]
  def change
    create_table :goallists do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
