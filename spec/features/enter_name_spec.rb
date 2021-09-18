require 'capybara/rspec'
require_relative '../../app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature "Entering a name" do 
  scenario "marketer enters their name to play" do 
    visit('/')
    fill_in :marketer_name_1, with: 'Adrienne'
    click_button('Submit')
    expect(page).to have_content("Adrienne")
  end
end 
