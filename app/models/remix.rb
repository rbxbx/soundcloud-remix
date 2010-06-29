class Remix < ActiveRecord::Base
  
  attr_accessor :remix
  
  belongs_to :user
  
end
