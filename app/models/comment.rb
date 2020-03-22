class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, presence: true
<<<<<<< HEAD

  has_rich_text :body
=======
>>>>>>> b77dd41ee1bcbbb9991657ea33e68be945194b58
end
