class Article < ApplicationRecord

  has_many :comments

  validates :title, presence: true ,length: {minimum: 2}
  validates :text, presence: true ,length: {minimum: 5}

  def subject
    title
  end

  def last_comment
    comments.last
  end

end
