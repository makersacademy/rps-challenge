feature 'Play again spec' do
  scenario 'Starting a new game after playing one' do
    sign_in_and_play
    click_button('rock')
    click_button('Play again?')
    expect(page).to have_content('Welcome to Capybara RPS')
    find_field('player_name')
  end
end
