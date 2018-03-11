feature 'show previous result' do
  scenario 'can see the result after player2 moves' do
    sign_in_and_play
    click_link 'Start Game'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content 'Last round: Timmy: rock vs. Shaun: paper'
  end

  scenario 'can see the result after player2 moves' do
    sign_in_and_play
    click_link 'Start Game'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content 'Timmy lost at previous round!'
  end

  scenario 'can see the result after player2 moves' do
    sign_in_and_play
    click_link 'Start Game'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content 'Timmy lost so far!'
  end
end
