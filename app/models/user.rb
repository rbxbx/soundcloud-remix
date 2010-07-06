class User < SoundcloudAuth::GenericUser
  
  has_many :remixes
  
  def name
    full_name.empty? ? username : full_name
  end
  
end
