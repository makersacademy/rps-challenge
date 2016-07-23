describe 'Enter names' do
  scenario '2 player names are entered and displayed' do
    visit '/'
    fill_in "player_1_name", with: "Jonny"
    fill_in "player_2_name", with: "Santa Claus"
    click_button "Let's do this"
    expect(page).to have_content "Jonny vs. Santa Claus"
  end
end
