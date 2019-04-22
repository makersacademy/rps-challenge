feature "Choose move" do
  scenario "allows the player to choose Rock, Paper or Scissors" do
    visit('/')
    fill_in :name, with: 'Calum'
    click_button 'Submit'
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
