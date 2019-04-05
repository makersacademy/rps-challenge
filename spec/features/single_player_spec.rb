feature 'can play single player' do
  scenario 'can play on your own' do
    visit ('/')
    fill_in :name, with: "Josh"
    click_button "Play Single Player"
    expect(page).to have_content "Josh vs. Computer"
  end
end
