require 'capybara/rspec'

feature 'See name in lights' do
  scenario 'Player can enter their name' do
    visit('/')
    fill_in :player, with: 'Mickey'
    click_button 'Submit'
    expect(page).to have_text 'Mickey'
  end
end
