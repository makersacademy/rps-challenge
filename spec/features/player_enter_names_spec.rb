feature "Player enters names" do
  scenario "entering names" do
    visit ('/')
    fill_in :player_1_name, with: "Sunali"
    expect(page).to have_content 'Your name :'
    click_button "Play"
  end
end
