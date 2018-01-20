feature 'see game options' do
  scenario 'player to be able to see game choices' do
    sign_in_and_play
    expect(page).to have_text("Rock! Paper! Scissors!")
  end
end

feature 'player1 makes a selection' do
  scenario 'player1 clicks on Rock' do
    sign_in_and_play
    select 'Rock', from: 'player1_choice'
    click_button 'Submit'
    expect(page).to have_text('Dragon Eyes chose Rock')
  end
  scenario 'player clicks on Paper' do
    sign_in_and_play
    select 'Paper', from: 'player1_choice'
    click_button 'Submit'
    expect(page).to have_text('Dragon Eyes chose Paper')
  end
  scenario 'player clicks on Scissors' do
    sign_in_and_play
    select 'Scissors', from: 'player1_choice'
    click_button 'Submit'
    expect(page).to have_text('Dragon Eyes chose Scissors')
  end
end
#
# feature 'reduce player2 hit points' do
#   scenario 'player2 hit points reduced by 10 when attacked' do
#     sign_in_and_play
#     click_button 'Attack'
#     expect(page).to have_text(90)
#   end
# end
