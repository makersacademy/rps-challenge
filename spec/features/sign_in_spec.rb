require 'capybara/rspec'

feature 'Creating a player' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors!'
  end
end
