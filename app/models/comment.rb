class Comment < ActiveRecord::Base
  validates :username, presence: true
  validates :text, presence: true
end
