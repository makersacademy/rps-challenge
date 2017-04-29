feature 'Testing infrastructure' do
  scenario 'have submit button on homepage' do
    visit('/')
    expect(page).to have_button('Submit')
  end
  scenario 'have name field on homepage' do
    visit('/')
    expect(page).to have_field('player_1')
  end
  scenario 'have best of field on homepage' do
    visit('/')
    expect(page).to have_field('best_of')
  end
  scenario 'entering player names' do
    sign_in_and_play
    expect(page).to have_content('PLAYERONE')
  end
  scenario 'win turn' do
    sign_in_and_play
    srand(1)
    find("#rock").click
    expect(page).to have_content('beats')
  end
  scenario 'draw turn' do
    sign_in_and_play
    srand(2)
    find("#rock").click
    expect(page).to have_content('draws')
  end
  scenario 'lose turn' do
    sign_in_and_play
    srand(9)
    find("#rock").click
    expect(page).to have_content('beaten by')
  end
  scenario 'win in three turns' do
    sign_in_and_play
    play_winning_game
    expect(page).to have_content('PLAYERONE (Wins: 3)')
  end
  scenario 'lose in three turns' do
    sign_in_and_play
    play_losing_game
    expect(page).to have_content('PLAYERONE (Wins: 0)')
  end
  scenario 'can be two player' do
    sign_in_2_players_and_play
    find("#rock").click
    expect(page).to_not have_button('Next')
  end
  scenario 'play 2 player game' do
    sign_in_2_players_and_play
    play_2_player
    expect(page).to have_content("PLAYERTWO WINS! 3-0")
  end
end
