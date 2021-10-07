feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit("/")
    expect(page).to have_content 'Enter your name to play!'
  end
  scenario 'starts game after hitting submit' do
    visit("/")
    fill_in "player_name", with: "Patrick"
    click_button('Start')
    expect(page).to have_content 'Patrick VS. Computer'
  end
end