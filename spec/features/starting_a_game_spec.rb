require 'spec_helper'

feature 'Entering the page' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("Please enter your name:")
  end

  scenario 'I am asked to pick a weapon' do
    visit '/'
    fill_in('name', with:'Adrian')
    click_button("Start Game")
    expect(page).to have_content("Choose your weapon, Adrian!")
  end

  # scenario 'I can see the result of the game' do
  #   visit '/'
  #   fill_in('name', with:'Adrian')
  #   click_button("Start Game")
  #   choose("rock")
  #   click_button("PLAY!")
  #   expect(page).to have_content("The winner is")
  # end


end

# feature 'displays whether you have won or lost' do
#   scenario 'should go to results page when "PLAY" button clicked' do
#   visit '/play-game'
#   fill_in('weapon', with:'rock')
#   click_button('submit')
#   expect(page).to have_content("New Page")
#   end
# end
