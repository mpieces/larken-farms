class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :title
      t.text :caption
      t.attachment :image

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
