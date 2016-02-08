
feature 'Choose weapon' do
  scenario 'weapons are available' do
    sign_in_and_play
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'selecting a weapon' do
    sign_in_and_play
    choose('paper')
    click_button('Fight!')
    expect(page).to have_content 'Arnold chose paper'
  end

  scenario 'selecting a weapon for player 2 in multiplayer' do
    sign_in_and_play_multiplayer
    choose('paper')
    click_button('Fight!')
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'selecting a weapon for player 2 in multiplayer' do
    sign_in_and_play_multiplayer
    choose('paper')
    click_button('Fight!')
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content 'Arnold chose paper'
    expect(page).to have_content 'Abram chose rock'
  end
end
