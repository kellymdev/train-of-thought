class Thought < ApplicationRecord
  has_many :sequences
  has_many :steps, through: :sequences

  validates :name, presence: true, length: { minimum: 3 }
end
