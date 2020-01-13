feature "Fill in and see Player's name" do
  scenario "at the begining of the game" do
    visit '/'
    fill_in :player_1_name, with: "Carmen"
    click_button "Register"
    expect(page).to have_content 'Carmen vs. Computer'
  end
end
