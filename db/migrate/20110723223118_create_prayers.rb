class CreatePrayers < ActiveRecord::Migration
  def self.up
    create_table :prayers do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :prayers
  end
end
