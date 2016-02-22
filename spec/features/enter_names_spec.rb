require 'capybara/rspec'

feature 'Enter names' do
  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content 'Bob VS Computer'
  end
end
