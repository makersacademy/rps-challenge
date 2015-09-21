require 'spec_helper'

     feature 'Starting new game' do

     scenario 'I see a greeting when I start the game' do
     visit '/'
     expect(page).to have_content "Welcome! Are you ready for new game"
  end


    scenario 'I am asked to enter my name' do
    visit '/request'
    expect(page).to have_content "What's your name?"
  end


  # scenario 'After player wrote his name, he can see his name and prompt' do
  #    visit '/request'
  #    fill_in('name', with: 'John')
  #    click_button('submit')
  #    expect(page).to have_content "John! press button to start the game"
  #  end

scenario 'After player made choice he is able to see the results' do
   visit '/game'
   click_button('scissors')
   visit '/result'
   expect(page).to have_content "scissors"
end




 end
