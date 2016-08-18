require 'rails_helper'

RSpec.describe Thought do
  let(:name) { 'Happiness' }
  let(:description) { 'A happy feeling' }
  let(:indicator) { 'noun' }
  subject(:thought) { Thought.new(name: name, description: description, indicator: indicator) }

  describe 'associations' do
    it { is_expected.to have_many :sequences }

    it { is_expected.to have_many :steps }
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

    context 'with a blank description' do
      let(:description) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a description that is too short' do
      let(:description) { 'Happ' }

      it { is_expected.not_to be_valid }
    end

    context 'with a blank indicator' do
      let(:indicator) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a indicator that is too short' do
      let(:indicator) { 'Be' }

      it { is_expected.not_to be_valid }
    end
  end
end
