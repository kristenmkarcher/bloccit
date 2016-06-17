class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
<<<<<<< HEAD

  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true 
=======
>>>>>>> checkpoint-40-authorization
end
