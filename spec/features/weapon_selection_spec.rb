feature "Weapon selection" do
  scenario "player 1 can select a weapon" do
    dwayne_signs_in
    choose "Rock"
    click_button "Play"
    expect(page).to have_content "Dwayne 'The Marketeer' Johnson used Rock"
  end
end
