require 'rails_helper'

RSpec.describe Sequence do
  let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk') }
  let(:thought) { Thought.create!(name: 'Stressed') }
  subject(:sequence) { Sequence.create!(step: step, thought: thought) }

  context 'associations' do
    it { is_expected.to belong_to :step }

    it { is_expected.to belong_to :thought }
  end
end