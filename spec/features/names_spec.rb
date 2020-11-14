feature "Enter names" do
  scenario "players register names to play" do
    visit('/')
    fill_in :player_name, with: "Hyko"
    click_button 'Submit'
    expect(page).to have_content "💎 🏳 ✂ Hyko vs Computer 💎 🏳 ✂"
  end
end
