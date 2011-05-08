class AddDashboardidToAdvertises < ActiveRecord::Migration
  def self.up
		add_column("advertises", "dashboard_id", :integer) 
  	
   end

  def self.down
  	remove_column("advertises", "dahsboard_id")
  end
end
