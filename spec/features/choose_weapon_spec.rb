feature 'Weapon selection' do
  scenario 'confirms the player\'s weapon choice' do
    visit('/')
    fill_in('player_name', with: 'Jax')
    click_button('Onward!')
    choose('rock')
    click_button('Arm yourself!')
    expect(page).not_to have_content('You have chosen PAPER!')
    expect(page).not_to have_content('You have chosen SCISSORS!')
    expect(page).to have_content('You have chosen ROCK!')
  end
end