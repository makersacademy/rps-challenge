feature "players name in lights" do
  scenario "player enters there name" do
    visit("/")
    fill_in :name, with: 'Adam'
    click_button 'Submit'
    expect(page).to have_content "Adam vs Computer"
  end
end
