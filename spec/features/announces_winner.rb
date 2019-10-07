feature 'announces the winner' do
  scenario 'Player picks Rock, Robot picks Scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content ' Wins!'
  end
end
