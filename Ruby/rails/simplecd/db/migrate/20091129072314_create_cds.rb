class CreateCds < ActiveRecord::Migration
  def self.up
    create_table :cds do |t|
      t.integer :artist_id, :null => false
      t.string :title, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :cds
  end
end
