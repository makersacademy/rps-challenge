feature 'Capybara tests...' do

  scenario 'Player can see their name when they enter it and submit' do
    enter_name_play_game
    expect(page).to have_content 'Wilson'
  end

  scenario 'Player can see all the options as buttons after signing in' do
    enter_name_play_game
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')

  end

  scenario 'Player is able to play rock/paper/scissors' do
    enter_name_play_game
    click_button 'Rock'
    expect(page).to have_content 'Play again?'
    expect(page).to have_link('', href: '/game')
  end
end
