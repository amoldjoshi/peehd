class AddColumnToWeeklyadds < ActiveRecord::Migration
  def self.up
   add_column("weeklyadds", "category_id", :integer)
  	
  end

  def self.down
    remove_column("weeklyadds", "category_id")
  	
  end
end
