feature 'Restart game' do
  scenario 'play a round, then Restart game' do
    sign_in_and_play
    play_round
    click_on "Restart game"
    expect(page).to have_text('Rock, Paper, Scissors!')
  end
end
