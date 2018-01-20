feature 'see results on results page' do
  scenario 'both choose Rock' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    select 'Rock', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("It's a draw!")
  end
  scenario 'both choose Paper' do
    sign_in_and_play
    select 'Paper', from: 'player1_choice'
    select 'Paper', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("It's a draw!")
  end
  scenario 'both choose Scissors' do
    sign_in_and_play
    select 'Scissors', from: 'player1_choice'
    select 'Scissors', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("It's a draw!")
  end
  scenario 'one chooses Rock, one chooses Paper' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    select 'Paper', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("Eagle Claw wins!") # player 2
  end
  scenario 'one chooses Rock, one chooses Scissors' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    select 'Scissors', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("Dragon Eyes wins!") # player 1
  end
  scenario 'one chooses Scissors, one chooses Paper' do
    sign_in_and_play
    select 'Scissors', from: 'player1_choice'
    select 'Paper', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("Dragon Eyes wins!") # player 1
  end
end
