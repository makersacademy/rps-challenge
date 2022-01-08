feature 'name submission' do
  scenario 'player can register name' do
    sign_in_and_play
    expect(page).to have_content("Hannah – it's time to play Rock, Paper, Scissors!")
  end
  scenario 'player is presented choices' do
    sign_in_and_play
    expect(page).to have_content("Choose rock, paper or scissors:")
  end
  scenario '' do
    # sign in and play
    # choose choice
  end
 end

