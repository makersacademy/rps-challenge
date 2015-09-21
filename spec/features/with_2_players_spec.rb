require 'spec_helper'

feature "Playing rsp with 2 players" do
  scenario "Game remembers 2 usernames" do
    visit "/sign_up"
    fill_in("username", with: "Jongmin")
    click_button("Sign Up")
    visit "/sign_up"
    fill_in("username", with: "Jorgen")
    click_button("Sign Up")
    click_link("Play with friend")
    expect(page).to have_content("Jorgen vs. Jongmin")
  end

  scenario "Two players know who wins and who loses" do
    visit "/sign_up"
    fill_in("username", with: "Jongmin")
    click_button("Sign Up")
    click_link("Play with friends")
    choose("paper")
    click_button("Play")
    visit "/sign_up"
    fill_in("username", with: "Jorgen")
    click_button("Sign Up")
    click_link("Play with friends")
    choose("rock")
    click_button("Play")
    expect(page).to have_content("You lose")
  end

end
