require 'spec_helper'

feature "can choose from a number of moves" do
  it "moves on play screen" do
    sign_in
    expect(page).to have_content "rock"
    expect(page).to have_content "paper"
    expect(page).to have_content "scissors"
    expect(page).to have_content "lizard"
    expect(page).to have_content "spock"
  end
end

feature "can play a bout" do
  it "shows the move chosen by the player" do
    sign_in
    click_button 'rock'
    expect(page).to have_xpath("//img[contains(@src, 'l_rock')]")
  end
end
