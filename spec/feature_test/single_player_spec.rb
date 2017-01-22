require 'spec_helper'

feature "so I can choose my attack" do
  scenario "I can pick an option" do
    sign_in_and_play_single_player
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

feature "when I choose rock" do
  scenario "I can see that I've chosen rock" do
    choose_rock
    expect(page).to have_content("Mike chose rock!")
    expect(page).to have_content("Computer chose")
  end
end

feature "when I choose paper" do
    scenario "so I can see that I've chosen paper" do
    choose_paper
    expect(page).to have_content("Mike chose paper!")
    expect(page).to have_content("Computer chose")
  end
end

feature "when I choose scissors" do
  scenario "I can see that I've chosen scissors" do
    choose_scissors
    expect(page).to have_content("Mike chose scissors!")
    expect(page).to have_content("Computer chose")
  end
end

feature "so I can play multiple games" do
  scenario "I want to go back to the start play page" do
    choose_scissors
    click_button ('Play Again')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
