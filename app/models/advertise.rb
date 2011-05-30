class Advertise < ActiveRecord::Base

 belongs_to :dashboard

 validates  :dashboard_id, :numericality => {:only_integer => true},
 						   :inclusion => { :in => 1..4 }
 validates  :url,          :presence => true,
				           :length   => { :maximum => 50 }
 validates  :price,        :presence => true,
end
