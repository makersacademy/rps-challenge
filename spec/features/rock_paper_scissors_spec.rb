feature 'Play RockPaperScissors' do
  scenario 'player can pick rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
