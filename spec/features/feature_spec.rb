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
    srand(4)
    find("#rock").click
    expect(page).to have_content('WIN')
  end
  scenario 'draw turn' do
    sign_in_and_play
    srand(2)
    find("#rock").click
    expect(page).to have_content('DRAW')
  end
  scenario 'lose turn' do
    sign_in_and_play
    srand(1)
    find("#rock").click
    expect(page).to have_content('LOSE')
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
