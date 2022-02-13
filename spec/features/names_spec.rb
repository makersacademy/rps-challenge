require 'capybara/rspec'

feature 'Players' do 
  scenario 'enter player information' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Claire what would you like to play?'
  end
end
