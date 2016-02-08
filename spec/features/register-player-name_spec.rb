feature 'Registration screen' do
  scenario 'registers the player\'s name' do
    visit('/')
    fill_in('player_name', with: 'Jax')
    click_button('Onward!')
    expect(page).to have_content('Hail, Jax!')
  end
end