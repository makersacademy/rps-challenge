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

  scenario 'Player plays "Paper" and wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_content 'Your opponent chose "Rock". You win!'
  end

  scenario 'Player plays "Paper" and draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_content 'Your opponent chose "Paper" too. It\'s a draw.'
  end

  scenario 'Player plays "Paper" and loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_content 'Oh no! Your opponent chose "Scissors". You lose.'
  end  
end
