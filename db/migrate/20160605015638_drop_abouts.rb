class DropAbouts < ActiveRecord::Migration
  def change
    drop_table :abouts
  end
end
