
require 'spec_helper'

feature "A player chooses rock, paper or scissors" do
  scenario "Player chooses rock" do
    visit '/'
    fill_in 'player_name', :with => "Lucy"
    click_button "Let's Play!"
    choose "rock"
    click_button  "Come at me!"
    expect(page).to have_content("Lucy played rock")
  end

  scenario "Player chooses paper" do
    visit '/'
    fill_in 'player_name', :with => "Lucy"
    click_button "Let's Play!"
     choose "paper"
    click_button "Come at me!"
    expect(page).to have_content("Lucy played paper")
  end

  scenario "Player chooses scissors" do
    visit '/'
    fill_in 'player_name', :with => "Lucy"
    click_button "Let's Play!"
    choose "scissors"
    click_button "Come at me!"

    expect(page).to have_content ("Lucy played scissors")
  end



end
