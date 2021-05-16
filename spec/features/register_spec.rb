require 'capybara/rspec'
require_relative '../../app.rb'

Capybara.app = RPSApp

feature 'register name' do
  scenario 'user registers a name' do
    visit '/'

    fill_in('name', with: 'Nushi')
    click_button('submit')

    expect(page).to have_text('You: Nushi')
  end
end

