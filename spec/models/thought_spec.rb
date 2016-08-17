require 'rails_helper'

RSpec.describe Thought do
  let(:name) { 'Stressed' }
  subject(:thought) { Thought.new(name: name) }

  context 'associations' do
    it { is_expected.to have_many :sequences }

    it { is_expected.to have_many :steps }
  end

  context 'validations' do
    context 'with a valid name' do
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
  end
end