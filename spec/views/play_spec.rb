require './app.rb'

describe '/play' do
  feature 'in order to start a game of Janken' do
    scenario 'player can choose between three objects' do
      sign_in_single_player
      expect(page).to have_selector("input[type=submit][name='selection']")
    end
  end
end
