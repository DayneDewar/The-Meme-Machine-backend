class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :image
      t.string :top
      t.string :bottom
      t.integer :likes

      t.timestamps
    end
  end
end
