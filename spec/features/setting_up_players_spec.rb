feature "Enter player names" do
  scenario "to start playing" do
    visit('/')
    fill_in :player_1_name, with: "Rocky"
    fill_in :player_2_name, with: "Stoney"
    click_button 'submit'
    expect(page).to have_content "Rocky vs. Stoney. Fight!"
  end
end