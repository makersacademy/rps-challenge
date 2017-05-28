require_relative '../../app'
require_relative './web_helper'

feature "Player can choose their weapon", :type => :feature do
  scenario "The player can choose rock" do
    sign_in_and_play
    choose("weapon_choice_rock")
    click_button("ATTACK!")
    expect(page).to have_content "You chose ROCK!"
  end
  scenario "The player can choose paper" do
    sign_in_and_play
    choose("weapon_choice_paper")
    click_button("ATTACK!")
    expect(page).to have_content "You chose PAPER!"
  end
  scenario "The player can choose scissors" do
    sign_in_and_play
    choose("weapon_choice_scissors")
    click_button("ATTACK!")
    expect(page).to have_content "You chose SCISSORS!"
  end
end

feature "AI can choose their weapon", :type => :feature do
  scenario "The AI can choose rock, paper or scissors" do
    sign_in_and_play
    choose("weapon_choice_rock")
    click_button("ATTACK!")
    expect(page).to have_content "Your opponent chose ROCK!" || "Your opponent chose PAPER!" || "Your opponent chose SCISSORS!"
  end
end
