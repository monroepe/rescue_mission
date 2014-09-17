class Question < ActiveRecord::Base
  has_many :answers

  validates :title, length: { minimum: 40 }
  validates :description, length: { minimum: 150 }
  validates :title, :description, presence: true
end
