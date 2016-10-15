require 'spec_helper'

feature "register" do
  scenario "It should give a 'confirmation of registration' message" do
    #Disabled as test is pending.
    register              
    expect(page).to have_content "Thank you Maximus, you are now registered."
  end
  
  scenario "It should take you to the game screen if the 'OK' link is clicked." do 
    register
    click_link ("OK")
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end