require './app'

RSpec.feature "play rock paper scissors", :type => :feature do

before :each do
  sign_in_and_play
end

  scenario "display default score of 0 at beginning" do
    expect(page).to have_content("0")
  end

  scenario "checks that chosen weapon is assigned" do
    click_button("Paper")
    expect(page).to have_content("David Miller chose Paper")
  end

  scenario "declares player who reaches 10 points first wins the game" do
    100.times { click_button("Paper") }
    expect(page).to have_content("won!")
  end

end
