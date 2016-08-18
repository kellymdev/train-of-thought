require 'rails_helper'

RSpec.describe Step do
  let(:name) { 'Walk' }
  let(:description) { 'Go for a walk' }
  let(:mindfulness) { false }
  subject(:step) { Step.new(name: name, description: description, mindfulness: mindfulness) }

  describe 'associations' do
    it { is_expected.to have_many :sequences }

    it { is_expected.to have_many :thoughts }
  end

  describe 'validations' do
    context 'with a valid name and description' do
      it { is_expected.to be_valid }
    end

    context 'with a blank name' do
      let(:name) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a name that is too short' do
      let(:name) { 'Be' }

      it { is_expected.not_to be_valid }
    end

    context 'with a name that is too long' do
      let(:name) { 'Abcde fghij klm' }

      it { is_expected.not_to be_valid }
    end

    context 'with a blank description' do
      let(:description) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a description that is too short' do
      let(:description) { 'Walk' }

      it { is_expected.not_to be_valid }
    end

    context 'with a blank mindfulness value' do
      let(:mindfulness) { }

      it { is_expected.not_to be_valid }
    end
  end
end
