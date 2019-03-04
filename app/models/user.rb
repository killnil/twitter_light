class User < ApplicationRecord

  has_many :followee_followings, foreign_key: "follower_id", class_name: "Following"
  has_many :follower_followings, foreign_key: "followee_id", class_name: "Following"

  has_many :followers, through: :follower_followings
  has_many :followees, through: :followee_followings

end
