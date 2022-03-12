
RSpec.feature "home_page", type: :feature do
  scenario "the home-page should successfully say hello to users" do
    visit "/"
    expect(page).to have_content "Hello"
  end

  scenario "Filling out form with users name should redirect to /play and show user name" do
    visit '/'
    fill_in("name", with: "James")
    click_on "Submit"

    expect(page).to have_content "James"
  end
end
