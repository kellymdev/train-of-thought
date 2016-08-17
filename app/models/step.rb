class Step < ApplicationRecord
  has_many :sequences
  has_many :thoughts, through: :sequences

  validates :name, presence: true, length: { in: 3..10 }
  validates :description, presence: true, length: { minimum: 5 }
end
