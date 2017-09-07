require 'features/web_helper'

feature "select weapon" do
  scenario "user able to select the weapon" do
    sign_in
    click_button "ROCK"
    expect(page).to have_content "You selected ROCK"
  end

  scenario "user able to select the weapon" do
    sign_in
    click_button "PAPER"
    expect(page).to have_content "You selected PAPER"
  end

  scenario "user can replay" do
    sign_in
    click_button "PAPER"
    click_link "PLAY AGAIN"
    expect(page).to have_content ", make your choice!"
  end

  scenario "can change the player after a round" do
    sign_in
    click_button "PAPER"
    click_link "SWITCH PLAYER"
    expect(page).to have_content "Please enter your name"
  end
end
