require 'rails_helper'

RSpec.describe ThoughtsController do
  let!(:thought) { Thought.create!(name: 'Stressed') }

  describe '#index' do
    before { get :index }

    it 'returns status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end
  end

  describe '#show' do
    before { get :show, id: thought.id }

    it 'returns status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end
end