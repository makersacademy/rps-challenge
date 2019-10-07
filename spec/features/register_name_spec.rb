require_relative 'web_helpers'

feature 'Register name' do
  scenario 'A player register his name' do
    register_and_play
    expect(page).to have_content "Raymond, let's start the game!"
  end
end
