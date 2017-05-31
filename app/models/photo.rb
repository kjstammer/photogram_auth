class Photo < ApplicationRecord
    
    # - user_id: must be present
validates :user_id, :presence => true
    
    belongs_to(:user, :class_name => "User", :foreign_key => "user_id")
    has_many(:comments, :class_name => "Commment", :foreign_key => "comment_id")
    has_many(:likes, :class_name => "Like", :foreign_key => "like_id")
    has_many :fans, :through => :likes, :source => :user
end
