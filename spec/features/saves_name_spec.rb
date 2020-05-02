feature 'Saves input name' do
  scenario 'Displays user name after submission' do
    sign_in_and_play
    expect(page).to have_content 'Hi Andrew!'
  end

  scenario 'Displays user name after submission' do
    visit('/')
    fill_in 'player_name', with: 'David'
    click_button "Submit"
    expect(page).to have_content 'Hi David!'
  end
end
