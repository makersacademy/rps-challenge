require 'random_weapon'

feature 'player selects their weapon' do
  let(:weapon_1) { 'Rock' }
  let(:weapon_2) { 'Scissors' }
  let(:player_1) { 'Petra' }
  let(:player_2) { 'Velma' }
  
  scenario 'full choice of weapons provided' do
    play_solo
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
  
  context 'solo play' do
    let(:computer_weapon) { 'Rock' }
    
    before do
      allow(RandomWeapon).to receive(:choose).and_return(computer_weapon)
      play_solo(player_1)
    end

    scenario 'asks only player one to choose weapon' do
      expect(page).to have_content "Choose your weapon, #{player_1}"
      expect(page).not_to have_content "Choose your weapon, #{player_2}"
    end

    scenario 'chosen weapon shown' do
      choose option: weapon_1
      click_button 'Go!'
      expect(page).to have_content "You chose #{weapon_1}"
    end

    scenario 'computer player weapon shown' do
      choose option: weapon_1
      click_button 'Go!'
      expect(page).to have_content "I chose #{computer_weapon}"
    end
  end

  context 'multiplayer' do
    before do
      play_multi(player_1, player_2)
    end

    scenario 'asks both players to choose weapon' do
      expect(page).to have_content "Choose your weapon, #{player_1}"
      expect(page).to have_content "Choose your weapon, #{player_2}"
    end

    scenario 'chosen weapon shown' do
      choose 'weapon1', option: weapon_1
      choose 'weapon2', option: weapon_2
      click_button 'Go!'
      expect(page).to have_content "#{player_1} chose #{weapon_1}"
      expect(page).to have_content "#{player_2} chose #{weapon_2}"
    end
  end
end
