class Sequence < ApplicationRecord
  MAXIMUM_SEQUENCE_NUMBER = 6

  belongs_to :step
  belongs_to :thought

  validates :sequence_number, presence: true, inclusion: { in: 1..MAXIMUM_SEQUENCE_NUMBER }
end
