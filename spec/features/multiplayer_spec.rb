feature do
  scenario 'Can continue onto multiplayer game' do
    visit('/')
    fill_in :player_one, with: "Willow"
    fill_in :player_two, with: "Tara"
    find_button('PvP!').click
    expect(page).to have_content("Make your choices")
  end
end
