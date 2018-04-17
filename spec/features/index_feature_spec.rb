require './app'

feature "index page form" do
  scenario "User wants to choose paper" do
    visit '/'
    expect(page).to have_content("Paper")
  end

  scenario "It allows player 1 to enter their name" do
    sign_in_as_john_and_choose_paper
    expect(page).to have_content("John")
  end
end
