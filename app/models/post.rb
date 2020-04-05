  class Post < ApplicationRecord
  validates :title, {presence: true,length: {maximum: 100}}
  validates :category, {presence: true}
  validates :content, {presence: true}
  validates :user_id, {presence: true}
  def user
    return User.find_by(id:self.user_id)
  end
end
