require './app.rb'

feature 'Entering player names' do
  scenario 'Player enters their name' do
    sign_in_and_play
    expect(page).to have_content 'Jack vs'
  end
end
