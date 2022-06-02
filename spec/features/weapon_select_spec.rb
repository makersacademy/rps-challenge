feature "player can select a weapon" do
  scenario "player clicks rock button" do
    enter_and_submit_name
    click_button "Rock"
    expect(page).to have_text "You selected Rock"
    expect(page).not_to have_text "You selected Scissors"
    expect(page).not_to have_text "You selected Paper"
  end
end

feature "player can select a weapon" do
  scenario "player clicks paper button" do
    enter_and_submit_name
    click_button "Paper"
    expect(page).to have_text "You selected Paper"
    expect(page).not_to have_text "You selected Rock"
    expect(page).not_to have_text "You selected Scissors"
  end
end

feature "player can select a weapon" do
  scenario "player clicks scissors button" do
    enter_and_submit_name
    click_button "Scissors"
    expect(page).to have_text "You selected Scissors"
    expect(page).not_to have_text "You selected Rock"
    expect(page).not_to have_text "You selected Paper"
  end
end