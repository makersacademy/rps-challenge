feature 'register names' do
  scenario 'enter and display player name' do
    visit('/')
    fill_in('player_name', with: 'Ben')
    click_button('Register')
    expect(page).to have_content('Player Name: Ben')
  end
end