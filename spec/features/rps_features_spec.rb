require_relative 'web_helpers'

RSpec.feature "home_page", type: :feature do
  scenario "the home-page should successfully say hello to users" do
    visit "/"
    expect(page).to have_content "Hello"
  end

  scenario "Filling out form with users name should redirect to /play and show user name" do
    user_signs_in

    expect(page).to have_content "James"
  end

  context "Filling out the users selection of either Rock, paper or scissors" do
    scenario "User chooses 'Rock'" do
      user_signs_in
      check 'R'
      click_on "Submit"

      expect(page).to have_content("You chose Rock!")
    end

    scenario "User chooses 'Paper'" do
      user_signs_in
      check 'P'
      click_on "Submit"

      expect(page).to have_content("You chose Paper!")
    end

    scenario "User chooses 'Scissors'" do
      user_signs_in
      check 'S'
      click_on "Submit"

      expect(page).to have_content("You chose Scissors!")
    end

  end
end
