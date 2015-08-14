class User < ActiveRecord::Base
  mount_uploader :avatar, PictureUploader
end
