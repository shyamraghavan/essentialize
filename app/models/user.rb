class User < ActiveRecord::Base
 validates :name,  presence: true, length: { maximum: 50 }
 VALID_TWITTER_REGEX = {/@\A[\w]+\z/i}
 validates :handle, presence: true, length: { maximum: 50 }, format : {with: VALID_TWITTER_REGEX},
 uniqueness: {case_sensitive: true}
end
