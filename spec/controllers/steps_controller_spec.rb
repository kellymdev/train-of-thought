require 'rails_helper'

RSpec.describe StepsController do
  describe '#show' do
    let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk', mindfulness: false) }
    let(:thought) { Thought.create!(name: 'Calm', description: 'A calming feeling', indicator: 'noun') }

    before do
      thought.sequences.create!(step: step, sequence_number: 1)
      get :show, params: { thought_id: thought, id: step }
    end

    it 'returns http status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end

    it 'assigns @thought to the thought' do
      expect(assigns(:thought)).to eq(thought)
    end

    it 'assigns @step to the step' do
      expect(assigns(:step)).to eq(step)
    end
  end
end
