class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :post_id, uniqueness: { scope: :user_id, message: "Você já curtiu esse post" }
end
