class Vote < ActiveRecord::Base
  
  belongs_to :remix, :counter_cache => true
  
  validates_uniqueness_of :ip_address
  
end
