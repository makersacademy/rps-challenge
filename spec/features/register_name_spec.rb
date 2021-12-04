feature 'player name' do
  scenario 'player can enter name' do
    visit '/'
    fill_in 'name', with: 'kenny'
    click_button "Submit"
    expect(page).to have_content("Welcome kenny to a game of Rock, Paper, Sissors")
  end
end
