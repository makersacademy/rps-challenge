require './app.rb'

describe Janken do

  feature '/player_one_entry' do
    scenario 'player is able to enter their name' do
      sign_in_single_player
      expect(page).to have_content :player_one
    end
  end

  feature '/play' do
    scenario 'player is able to choose between three game objects' do
      sign_in_single_player
      click_button 'Rock'
      expect(page).to have_content "#{:player_one} selected Rock"
    end
  end

  # feature '/result' do
  #   let(:player_two) { double(:player_two) }
  #   scenario 'random object assigned to computer opponent in single player' do
  #     sign_in_single_player
  #     click_button 'Rock'
  #     allow(player_two).to receive(:random_selection).and_return('Scissors')
  #     expect(page).to have_content "#{:player_one} beat #{:player_two}!"
  #   end
  # end
end
