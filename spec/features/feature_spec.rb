Capybara.app = RPSApp

feature 'Entering player name' do
  scenario 'Allows users to input their name' do
    visit('/')
    fill_in :player_name, with: 'player_name'
    click_button('Submit')
    expect(page).to have_content('player_name')
  end
end
