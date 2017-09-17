feature "Player enters names" do
  scenario "entering names" do
    visit ('/')
    fill_in :player_1, with: "Sunali"
    click_bitton "Play"
    expect(page).to have_content 'What weapon would you like to choose?'
  end
end
