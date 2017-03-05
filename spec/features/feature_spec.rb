require 'spec_helper'

RSpec.feature '#/' do
  scenario 'going to the home route takes you to the /RPS/new_player page' do
    visit '/'
    expect(page).to have_content("Player name:")
    expect(page).to have_css('input[type="text"][name="player"]')
  end
end

RSpec.feature 'initializing RPS game with 1 player' do
  scenario 'allows players to enter their names and see them' do
    sign_in
    expect(page).to have_content("Player: Alex")
  end
end

 RSpec.feature 'expect play page to have 3 buttons for the 3 choices the player can make' do
   scenario 'there are 3 buttons on the page with the values of the 3 choices' do
     sign_in
     expect(page).to have_css('input[value="Rock"]')
     expect(page).to have_css('input[value="Paper"]')
     expect(page).to have_css('input[value="Scissors"]')
   end

   scenario 'the first button sets the players choice to rock' do
     sign_in
     click_button 'Rock'
     expect(page).to have_content "Alex: Rock"
   end

   scenario 'the first button sets the players choice to rock' do
     sign_in
     click_button 'Paper'
     expect(page).to have_content "Alex: Paper"
   end

   scenario 'the first button sets the players choice to rock' do
     sign_in
     click_button 'Scissors'
     expect(page).to have_content "Alex: Scissors"
   end
 end

# unsure how to test this
 # RSpec.feature 'returns the result' do
 #   scenario 'prints the result' do
 #     sign_in
 #     click_button 'Rock'
 #     expect(page).to have_content "Alex wins."
 #   end
 # end
