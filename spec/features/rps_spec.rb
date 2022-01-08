feature 'name submission' do
  scenario 'player can register name' do
    sign_in_and_play
    expect(page).to have_content("Hannah – it's time to play Rock, Paper, Scissors!")
  end
  scenario 'player is presented choices' do
    sign_in_and_play
    expect(page).to have_content("Choose rock, paper or scissors:")
  end
  scenario 'player loses' do
    play_and_lose
    expect(page).to have_content("Computer chose paper – you lose!")
  end
  scenario 'player wins' do
    play_and_win
    expect(page).to have_content("Computer chose rock – you win!")
  end
 end

