class CreateWeeklyadds < ActiveRecord::Migration
  def self.up
    create_table :weeklyadds do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :weeklyadds
  end
end
