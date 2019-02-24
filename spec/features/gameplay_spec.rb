feature 'Playing the game' do
  scenario 'Player plays "Rock"' do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content 'You chose "Rock"'
  end  

  scenario 'Player plays "Paper"' do
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_content 'You chose "Paper"'
  end

  scenario 'Player plays "Scissors"' do
    sign_in_and_play
    click_on 'scissors'
    expect(page).to have_content 'You chose "Scissors"'
  end  

  scenario 'Player plays "Rock" and loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content 'Your opponent chose "Paper". You lose.'
  end

  scenario 'Player plays "Paper" and draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_content 'Your opponent chose "Paper". It\'s a draw.'
  end

  scenario 'Player plays "Scissors" and wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_on 'scissors'
    expect(page).to have_content 'Your opponent chose "Paper". You win!'
  end  
end
