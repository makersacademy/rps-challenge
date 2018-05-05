feature 'Choosing a weapon' do
  scenario 'choosing "Rock" and getting confirmation' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_text('You chose Rock!')
  end
  scenario 'choosing "Paper" and getting confirmation' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_text('You chose Paper!')
  end

  scenario 'choosing "Scissors" and getting confirmation' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_text('You chose Scissors!')
  end
end
