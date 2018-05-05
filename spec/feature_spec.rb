require_relative '../app'

feature 'Allows user to enter name' do
  scenario 'Displays name' do
    visit('/')
    fill_in 'player_name', with: 'Sam'
    click_button('Submit')
    expect(page).to have_content "Player 1: Sam"
  end
end
