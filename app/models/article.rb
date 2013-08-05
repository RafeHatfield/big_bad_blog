class Article < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  validates :title, presence: true, length: { maximum: 240 }
  validates :user_id, presence: true
end
