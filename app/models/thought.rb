class Thought < ApplicationRecord
  has_many :sequences
  has_many :steps, through: :sequences

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :indicator, presence: true, length: { minimum: 3 }
end
