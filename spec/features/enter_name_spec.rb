require './app.rb'

feature 'Entering player names' do
  scenario 'Player enters thier name' do
    sign_in_and_play
    expect(page).to have_content 'Jack'
    expect(page).to have_content 'Richard'
  end
end
