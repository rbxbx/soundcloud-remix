class User < SoundcloudAuth::GenericUser
  
  has_many :remixes
  
end
