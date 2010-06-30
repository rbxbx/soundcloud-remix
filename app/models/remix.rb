class Remix < ActiveRecord::Base
  
  attr_accessor :title, :asset_data
  
  belongs_to :user
  has_many :votes
  
  validates_presence_of :title
  validates_presence_of :asset_data
  
  def to_param
    track_id
  end
  
  def available?
    HTTParty.get("http://api.soundcloud.com/tracks/#{track_id}").code == 404 ? false : true
  end
  
  def track
    HTTParty.get("http://api.soundcloud.com/tracks/#{track_id}")["track"]
  end
  
end
