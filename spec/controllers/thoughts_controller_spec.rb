require 'rails_helper'

RSpec.describe ThoughtsController do
  let!(:thought) { Thought.create!(name: 'Calm', description: 'A calming feeling', indicator: 'noun') }
  let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk.', mindfulness: false) }

  before { thought.sequences.create!(step: step, sequence_number: 1) }

  describe '#index' do
    before { get :index }

    it 'returns status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end

    it 'assigns @thoughts to all the thoughts' do
      expect(assigns(:thoughts)).to eq(Thought.all.order(:name))
    end
  end

  describe '#show' do
    before { get :show, params: { id: thought.id } }

    it 'returns status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end

    it 'assigns @thought to equal the thought' do
      expect(assigns(:thought)).to eq(thought)
    end

    it 'assigns @steps to the steps for the thought' do
      expect(assigns(:steps)).to eq(thought.steps)
    end
  end
end
