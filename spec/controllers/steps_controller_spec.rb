require 'rails_helper'

RSpec.describe StepsController do
  describe '#show' do
    let(:step) { Step.create!(name: 'Walk', description: 'Go for a walk', mindfulness: false) }

    before { get :show, id: step.id }

    it 'returns http status 200' do
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end
end