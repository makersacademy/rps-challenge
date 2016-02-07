feature 'Registration screen' do
  scenario 'registers the player\'s name for this game session' do
    visit('/')
    fill_in('player_name', with: 'Jax')
    click_button('Onward!')
    expect(page).to have_content('Jax')
  end
end