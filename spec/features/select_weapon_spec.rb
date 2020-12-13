feature 'select weapon' do
  scenario 'player has three options for weapon' do
    visit('/')
    fill_in("player_name", with: "Rubber Duck")
    click_button "Submit name"
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
