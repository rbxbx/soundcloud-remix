class Vote < ActiveRecord::Base
  
  belongs_to :remix, :counter_cache => true
  
end
