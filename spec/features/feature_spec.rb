require 'spec_helper'

feature "players can enter their names" do
  scenario "User logs onto page and enters two names" do
    sign_in_with_names
    expect(page).to have_text("Joe vs Haydon!")
    expect(page).to have_text("Joe, it's your turn!")
  end

  scenario "User logs onto page, enters names and sees a vs title" do
    sign_in_with_names
    expect(page).to have_current_path("/play")
  end
end
  
feature "player can choose from rock paper scissors" do
  scenario "user chooses rock" do
    sign_in_with_names
    choose("r")
    click_on("Submit")
  end
end