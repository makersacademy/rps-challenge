require './rps_game.rb'

feature 'Presents choices' do
  scenario 'Player can see their name' do
    sign_in_and_play
    expect(page).to have_content 'The Donald'
  end
end
