class Article < ApplicationRecord
  validates :BookName, presence: true, length: { minimum: 5, maximum: 100 }
  validates :Author, presence: true, length: { minimum: 5 }
end
