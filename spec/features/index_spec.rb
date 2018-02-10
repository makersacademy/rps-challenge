require './app.rb'

feature do
  scenario "It does stuff" do
    visit '/'
    expect(page).to have_content("my page is fine the test suite is not")
  end
end
