require 'capybara/rspec'

feature 'Enter name' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'Hello Dave!'
  end
end
