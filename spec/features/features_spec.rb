feature 'Can store player name' do
  scenario 'when submitting it on the website' do
    visit('/')
    fill_in('player_name', with: 'Kelvin')
    click_button('Play!')
    expect(page).to have_content 'Kelvin'
  end
end