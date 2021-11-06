require './app.rb'

feature 'after a name is entered' do
  scenario 'it returns the player name' do
    sign_in_and_play
    expect(page).to have_content "Nico"
  end
end
