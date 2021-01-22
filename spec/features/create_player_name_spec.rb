require "capybara/rspec"

feature "registering for a game" do 

  scenario "displays entered name" do
    visit "/"
    fill_in "name", with: "Sophie"
    click_button "Start game"
    expect(page).to have_text "Sophie"
  end



end
