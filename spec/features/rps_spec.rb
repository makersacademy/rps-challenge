feature 'Rock Paper Scissor options' do
  scenario 'player selects rock' do
    load_and_play
    select 'rock', from: 'move'
    click_on 'Go!'
    expect(page).to have_content "You played rock"
  end

  scenario 'computer random move' do
    load_and_play
    srand(4)
    user_move_rock
    expect(page).to have_content "Computer played paper"
  end

  scenario 'Player wins' do
    load_and_play
    srand(8)
    user_move_rock
    expect(page).to have_content "Lily wins"
  end

  scenario 'Computer wins' do
    load_and_play
    srand(4)
    user_move_rock
    expect(page).to have_content "Computer wins"
  end

  scenario 'Draw' do
    load_and_play
    srand(10)
    user_move_rock
    expect(page).to have_content "It was a draw"
  end


end
