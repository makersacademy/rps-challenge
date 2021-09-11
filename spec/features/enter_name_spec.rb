require 'capybara/rspec'
require_relative '../../app'

feature "Entering a name" do 
  scenario "marketer enters their name to play" do 
    visit ('/')
    fill_in :marketer_name_1, with: 'Adrienne'
    click_button 'Submit'
    expect(page).to have_content("Adrienne")
  end
end 
