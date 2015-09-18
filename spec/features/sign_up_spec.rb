require 'spec_helper'

feature "Sign up" do
  scenario "You can see the sign up link on the main page" do
    visit "/"
    expect(page).to have_content("Sign Up")
  end

  scenario "You can register your name" do
    visit "/"
    click_link("Sign Up")
    expect(page).to have_content("Please register your name")
  end

  scenario "It asks you to fill in the form if nothing is typed" do
    visit "/sign_up"
    fill_in("username", with: "")
    click_button("Sign Up")
    expect(page).to have_content("Please register your name")
  end

  scenario "It displays welcome message when your register your name" do
    visit "/sign_up"
    fill_in("username", with: "Jongmin")
    click_button("Sign Up")
    expect(page).to have_content("Thank you for signing up, Jongmin!")
  end

end
