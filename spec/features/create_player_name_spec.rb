require "capybara/rspec"

feature "registering for a game" do 

  scenario "displays entered name" do
    visit "/"
    fill_in "name", with: "Charlotte"
    click_button "Start game"
    expect(page).to have_text "Charlotte vs opponentbot!"
  end



end
