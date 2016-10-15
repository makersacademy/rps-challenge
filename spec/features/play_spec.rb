require './app'

RSpec.feature "play rock paper scissors", :type => :feature do

before :each do
  sign_in_and_play
end

  scenario "display default score of 0 at beginning" do
    expect(page).to have_content("0")
  end

  # scenario "checks that chosen weapon is assigned to model" do
  #   click_button("Paper")
  #   expect(page).to have_content("Weapon: Paper")
  # end

  # scenario "updates score after a round of game" do
  #   click_button("Paper")
  #   #allow computer to choose rock
  #   expect(page).to have_content("1")
  # end

end
