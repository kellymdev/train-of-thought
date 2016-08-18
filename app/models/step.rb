class Step < ApplicationRecord
  MINDFULNESS_DURATION_IN_MINUTES = 2

  has_many :sequences
  has_many :thoughts, through: :sequences

  validates :name, presence: true, length: { in: 3..12 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :mindfulness, inclusion: { in: [true, false] }
end
