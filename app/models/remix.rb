class Remix < ActiveRecord::Base
  
  attr_accessor :title, :asset_data
  
  belongs_to :user
  
  validates_presence_of :title
  validates_presence_of :asset_data
  
end
