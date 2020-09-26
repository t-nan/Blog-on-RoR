class Article < ApplicationRecord

  validates :title, presence: true ,length: {minimum: 2}
  validates :text, presence: true ,length: {minimum: 5}

end
