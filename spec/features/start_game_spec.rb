require 'start_game'

feature 'start game' do
  scenario 'A new game begins when Start Game button pressed' do
    register_to_play
    click_button 'Start Game'
    expect(page).to have_content "Please select your move by hitting a button below"
  end
end
  