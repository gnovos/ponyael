class CreateHorses < ActiveRecord::Migration
  def self.up
    create_table :horses do |t|
      t.string :image_url
      t.string :breed
      t.string :price
      t.string :cross
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :horses
  end
end
