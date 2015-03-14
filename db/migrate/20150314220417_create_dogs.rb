class CreateDogs < ActiveRecord::Migration
  def self.up
    create_table :dogs do |t|
      t.string :name
      t.text :comment
      t.string :viewid
      t.string :adminid
      t.string :website
      t.timestamps
    end
  end

  def self.down
    drop_table :dogs
  end
end
