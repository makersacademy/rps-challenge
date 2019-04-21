feature 'See my name' do
  scenario 'register name before playing' do
    visit('/')
    fill_in('player_name', with: 'Rick')
    click_button('Submit')
    expect(page).to have_content('Rick')
  end
end
