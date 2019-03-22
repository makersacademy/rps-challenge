feature 'Player enters name' do
  scenario 'When a player enters their name it is displayed back' do
    visit '/'

    fill_in "name", with: "Sam"
    click_button "Start Game"
    expect(page).to have_content "Hello Sam"
  end
end
