feature 'see results on results page' do
  scenario 'both choose rock' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    select 'Rock', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("It's a draw!")
  end
  scenario 'both choose rock' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    select 'Paper', from: 'player2_choice'
    click_button 'Submit'
    expect(page).to have_text("Player 2 wins!")
  end
end
