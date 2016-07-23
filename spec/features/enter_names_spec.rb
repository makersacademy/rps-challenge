describe 'Enter names' do
  scenario '2 player names are entered and displayed' do
    visit('/')
    fill_in "player_1", with: "Jonny"
    fill_in "player_2", with: "Santa Claus"
    click_button("Let's do this")
    expect(page).to have_content "Jonny vs. Santa Claus"
  end
end
