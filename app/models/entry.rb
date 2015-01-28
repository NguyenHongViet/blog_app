class Entry < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, 	presence: true
  validates :title, 	presence: true, length: { maximum: 256 }
  validates :body, 		presence: true
  has_many 	:comments,	dependent: :destroy
end
