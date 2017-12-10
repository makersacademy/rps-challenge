feature 'playing the game' do

  scenario 'each choice has a button' do
    sign_in_and_play_solo
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end

  scenario 'a confirmation message is displayed after player makes a choice' do
    sign_in_and_play_solo
    click_button 'Rock'
    expect(page).to have_content 'Player chose Rock!'
  end
  
end
