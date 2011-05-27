class CreateAddInfoURlprice < ActiveRecord::Migration
  def self.up
  	add_column("advertises", "url", :string) 
  	add_column("advertises", "price",:float)
  end

  def self.down
  	remove_column("advertises","url")
  	remove_column("advertises","price")
  end
end
