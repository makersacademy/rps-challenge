feature "Show names" do
  scenario "It shows the players names on the page" do
    visit('/')
    fill_in('player_1_name', with: "Jordan")
    fill_in('player_2_name', with: "Kyle")
    click_button "Play!"
    expect(page).to have_content "Jordan VS Kyle"
  end
end
