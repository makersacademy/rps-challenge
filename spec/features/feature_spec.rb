feature 'Testing infrastructure' do
  scenario 'have submit button on homepage' do
    visit('/')
    expect(page).to have_button('Submit')
  end
  scenario 'have name field on homepage' do
    visit('/')
    expect(page).to have_field('player_1')
  end
  scenario 'entering player names' do
    sign_in_and_play
    expect(page).to have_content('PlayerOne')
  end
  scenario 'have rock button on homepage' do
    sign_in_and_play
    expect(page).to have_button('ROCK')
  end
  scenario 'have paper button on homepage' do
    sign_in_and_play
    expect(page).to have_button('ROCK')
  end
  scenario 'win in three turns' do
    sign_in_and_play
    play_winning_game
    expect(page).to have_content('YOU WIN 3-0')
  end
  scenario 'lose in three turns' do
    sign_in_and_play
    play_losing_game
    expect(page).to have_content('YOU LOSE 0-3')
  end

end
