require './app.rb'

feature 'register name' do
  scenario 'A player is able to enter their name to register to play' do
  register_name_to_play
  expect(page).to have_content("Hello Spencer")
  end
end
