feature 'entering name' do
  scenario 'user enters name' do
    visit('/')
    fill_in('player_name', with: 'Neha')
    click_button('Start')
    expect(page).to have_content('Neha')
  end

end
