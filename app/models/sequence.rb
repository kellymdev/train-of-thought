class Sequence < ApplicationRecord
  belongs_to :step
  belongs_to :thought

  validates :sequence_number, presence: true, inclusion: { in: 1..5 }
end
