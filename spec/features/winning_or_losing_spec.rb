require 'random_weapon'

feature 'result of game' do
  let(:player_name) { 'Petra' }
  let(:chosen_weapon) { 'Rock' }
  let(:wins_against) { 'Scissors' }
  let(:loses_against) { 'Paper' }
  let(:draws_against) { 'Rock' }

  before do
    play_solo(player_name)
    # choose_weapon(chosen_weapon)
  end

  scenario 'player wins' do
    allow(RandomWeapon).to receive(:choose).and_return(wins_against)
    choose_weapon(chosen_weapon)
    expect(page).to have_content "Congratulations, #{player_name}, you won!"
  end

  scenario 'player loses' do
    allow(RandomWeapon).to receive(:choose).and_return(loses_against)
    choose_weapon(chosen_weapon)
    expect(page).to have_content "Sorry, #{player_name}, you lost!"
  end

  scenario 'a draw' do
    allow(RandomWeapon).to receive(:choose).and_return(draws_against)
    choose_weapon(chosen_weapon)
    expect(page).to have_content "Oh, that was a draw, #{player_name}."
  end

end