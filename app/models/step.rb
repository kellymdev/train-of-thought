class Step < ApplicationRecord
  validates :name, presence: true, length: { in: 3..10 }
  validates :description, presence: true, length: { minimum: 5 }
end
