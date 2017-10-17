require_relative '../../app.rb'

feature 'Second player can get to the page to take their turn' do

  scenario 'Player2 selects rock' do
    sign_in_and_play_multi_player
    first_player_chooses_rock
    expect(page).to have_content("Choose your weapon")
  end

end
