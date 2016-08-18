require 'rails_helper'

RSpec.describe StepsController do
  describe '#show' do
    let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk', mindfulness: false) }
    let(:thought) { Thought.create!(name: 'Calm') }

    before do
      thought.sequences.create!(step: step, sequence_number: 1)
      get :show, thought_id: thought.id, id: step.id
    end

    it 'returns http status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end
end