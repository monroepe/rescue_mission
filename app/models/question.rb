class Question < ActiveRecord::Base
  validates :title, length: { minimum: 40 }
  validates :description, length: { minimum: 150 }
  validates :title, :description, presence: true
end
