feature "player enters name" do
  scenario "player can select a weapon" do
    enter_and_submit_name
    click_button "Rock"
    expect(page).to have_text "You selected Rock"
    expect(page).not_to have_text "You selected Scissors"
    expect(page).not_to have_text "You selected Paper"
  end
end