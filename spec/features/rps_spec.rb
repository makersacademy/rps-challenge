feature 'Rock Paper Scissor options' do
  scenario 'player selects rock' do
    load_and_play
    select 'rock', from: 'move'
    click_on 'Go!'
    expect(page).to have_content "You played rock"
  end

  scenario 'computer random move' do
    load_and_play
    user_move_rock
    srand(4)
    expect(page).to have_content "Computer played paper"
  end

  scenario 'calculate result' do
  end
end
