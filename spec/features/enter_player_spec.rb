require './app.rb'

feature 'enter player name' do
  scenario 'can enter the name of the player' do
    sign_in
    expect(page).to have_content 'Kris'
  end
end