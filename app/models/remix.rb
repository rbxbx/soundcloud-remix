require 'httparty'

class Remix < ActiveRecord::Base
  
  attr_accessor :title, :asset_data
  
  belongs_to :user
  
  validates_presence_of :title
  validates_presence_of :asset_data
  
  def available?
    HTTParty.get('http://api.soundcloud.com/tracks/3709934').code = 404 ? false : true
  end
  
end
