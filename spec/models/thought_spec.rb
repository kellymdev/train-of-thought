require 'rails_helper'

RSpec.describe Thought do
  context 'validations' do
    subject(:thought) { Thought.new(name: name) }

    context 'with a valid name' do
      let(:name) { 'Stressed' }

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