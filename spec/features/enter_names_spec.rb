require 'capybara/rspec'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Daisy'
    click_button 'Submit'
    expect(page).to have_content 'Daisy'
  end
end
