require 'rails_helper'

RSpec.describe ThoughtsController do
  describe '#index' do
    let!(:thought) { Thought.create!(name: 'Stressed') }

    before { get :index }

    it "returns status 200" do
      expect(response.status).to eq 200
    end
  end
end