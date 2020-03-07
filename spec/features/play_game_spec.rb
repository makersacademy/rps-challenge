feature 'start playing' do
  scenario 'Welcome the user' do
    visit('/')
    fill_in('player_name', with: 'Neha')
    click_button('Start')
    expect(page).to have_content 'Welcome Neha'
  end
end
