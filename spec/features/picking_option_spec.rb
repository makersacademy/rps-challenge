require 'capybara/rspec'
require_relative '../../app'

# As a marketer 
# So that I can choose an option
# I will be presented the choices (rock, paper and scissors)

feature "Picking an option" do 
    scenario "marketer can select either rock, paper or scissors" do 
      visit ('/')
      fill_in :marketer_name_1, with: 'Adrienne'
      click_button 'Submit'
      click_button 'Rock'
      visit ('/option')
    #   expect(page).to have_content(""")
    end
  end 
  
