require 'rails_helper'

RSpec.describe "Players", type: :request do
  describe "POST /create" do
  
      context 'when the player is valid' do
        before do
          post '/players', params: {username: 'Gary', password: 'password', email: "Drittz@puma.com", profile: "Text Content" }
        end
  
        it 'returns http created' do
          expect(response).to have_http_status(:created)
        end
  
        it 'returns the created player' do
          expect(response.body).to eq(Player.last.to_json)
        end
  
      end
  
      context 'when the player is invalid' do
        before do
          post '/players', params: {  title: 'Test Title', content: 'Test Content', user_id: nil } 
        end
  
        it 'returns http unprocessable entity' do
          expect(response).to have_http_status(:unprocessable_entity)
        end
  
        it 'returns the validation errors' do
          expect(JSON.parse(response.body)).to eq({"player"=>["must exist"]})
        end
      end
    end
  
  end

