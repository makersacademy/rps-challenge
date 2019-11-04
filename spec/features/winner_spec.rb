feature 'winner' do
  scenario 'player 2 wins' do
    fill_in_and_submit
    click_button 'Paper'
    click_button 'Return'
    click_button 'Scissors'
    click_button 'Return'
    expect(page).to have_content 'Amy wins! Scissors beats Paper!'
  end

  scenario 'draw' do
    fill_in_and_submit
    click_button 'Rock'
    click_button 'Return'
    click_button 'Rock'
    click_button 'Return'
    expect(page).to have_content 'It\'s a draw! Rock is the same as Rock!'
  end
end
