
require 'spec_helper'

feature "A player chooses rock, paper or scissors" do
  scenario "Player chooses rock" do
    sign_in_and_play
    choose "rock"
    click_button  "Come at me!"
    expect(page).to have_content("Lucy played rock")
  end

  scenario "Player chooses paper" do
    sign_in_and_play
     choose "paper"
    click_button "Come at me!"
    expect(page).to have_content("Lucy played paper")
  end

  scenario "Player chooses scissors" do
    sign_in_and_play
    choose "scissors"
    click_button "Come at me!"
    expect(page).to have_content ("Lucy played scissors")
  end



end
