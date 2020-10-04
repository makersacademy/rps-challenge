require 'random_weapon'

feature 'result of game' do
  let(:player1_name) { 'Petra' }
  let(:player2_name) { 'Velma' }
  let(:chosen_weapon) { 'Rock' }
  let(:wins_against) { 'Scissors' }
  let(:loses_against) { 'Paper' }
  let(:draws_against) { 'Rock' }

  context 'solo play' do
    before do
      play_solo(player1_name)
    end

    scenario 'player wins' do
      allow(RandomWeapon).to receive(:choose).and_return(wins_against)
      choose_weapon(chosen_weapon)
      expect(page).to have_content "Congratulations, #{player1_name}, you won!"
    end

    scenario 'player loses' do
      allow(RandomWeapon).to receive(:choose).and_return(loses_against)
      choose_weapon(chosen_weapon)
      expect(page).to have_content "Sorry, #{player1_name}, you lost!"
    end

    scenario 'a draw' do
      allow(RandomWeapon).to receive(:choose).and_return(draws_against)
      choose_weapon(chosen_weapon)
      expect(page).to have_content "Oh, that was a draw, #{player1_name}."
    end
  end

  context 'multiplayer' do
    before do
      play_multi(player1_name, player2_name)
      choose 'weapon1', option: chosen_weapon
    end
    
    scenario 'player 1 wins' do
      choose 'weapon2', option: wins_against
      click_button 'Go!'
      expect(page).to have_content "#{player1_name} wins!"
    end

    scenario 'player 2 wins' do
      choose 'weapon2', option: loses_against
      click_button 'Go!'
      expect(page).to have_content "#{player2_name} wins!"
    end

    scenario 'a draw' do
      choose 'weapon2', option: draws_against
      click_button 'Go!'
      expect(page).to have_content "Oh, that was a draw."
    end
  end
end
