class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
# - username: must be present, unique
validates :username, :presence => true, :uniqueness => true
         
         has_many(:photos, :class_name => "Photo", :foreign_key => "photo_id")
         has_many(:comments, :class_name => "Comment", :foreign_key => "comment_id")
         has_many(:likes, :class_name => "Like", :foreign_key => "like_id")
         has_many :liked_photos, :through => :likes, :source => :photo
end
