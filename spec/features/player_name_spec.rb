feature 'player enters their name' do
  scenario 'player can view their name' do
    visit ("/")
    fill_in :player_name, with: "Junot"
    click_button "See your name in lights"
    expect(page).to have_content "Junot"
  end
end
