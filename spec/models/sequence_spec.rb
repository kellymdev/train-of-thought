require 'rails_helper'

RSpec.describe Sequence do
  let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk', mindfulness: false) }
  let(:thought) { Thought.create!(name: 'Stressed') }
  let(:sequence_number) { Sequence::MAXIMUM_SEQUENCE_NUMBER }
  subject(:sequence) { Sequence.new(step: step, thought: thought, sequence_number: sequence_number) }

  describe 'associations' do
    it { is_expected.to belong_to :step }

    it { is_expected.to belong_to :thought }
  end

  describe 'validations' do
    context 'with a valid sequence number' do
      it { is_expected.to be_valid }
    end

    context 'with a blank sequence number' do
      let(:sequence_number) { }

      it { is_expected.not_to be_valid }
    end

    context 'with a sequence number of 0' do
      let(:sequence_number) { 0 }

      it { is_expected.not_to be_valid }
    end

    context 'with a sequence number larger than the maximum' do
      let(:sequence_number) { Sequence::MAXIMUM_SEQUENCE_NUMBER + 1 }

      it { is_expected.not_to be_valid }
    end
  end
end