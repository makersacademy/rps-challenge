require 'spec_helper'

feature "Playing rsp with 2 players" do
  scenario "game remembers 2 usernames" do
    visit "/sign_up"
    fill_in("username", with: "Jongmin")
    click_button("Sign Up")
    visit "/sign_up"
    fill_in("username", with: "Jorgen")
    click_button("Sign Up")
    click_link("Rock-Paper-Scissors!")
    expect(page).to have_content("Jongmin vs. Jorgen")
  end
end
