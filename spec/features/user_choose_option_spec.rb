feature 'Testing user game options' do
  scenario 'Asks user to choose an option' do
    visit('/')
    fill_in 'player_name', with: 'Andrew'
    click_button "Submit"
    expect(page).to have_content 'What option do you choose:'
  end
end
