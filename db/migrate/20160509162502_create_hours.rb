class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
