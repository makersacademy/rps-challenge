
feature 'Next round' do
  scenario 'new round is ready to start' do
    sign_in_and_play
    one_round
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'draw round multiplayer' do
    sign_in_and_play_multiplayer
    one_round_multiplayer
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
