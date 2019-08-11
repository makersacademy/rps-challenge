feature 'Play Rock Paper Scissor' do
  scenario 'allow players be able to choose Rock, Paper or Scissor' do
    sign_in_and_play
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissor')
  end
  scenario 'expect player to choose an option and see the choice' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_button 'rock'
  end

end
