feature 'declares winner' do
  scenario 'player wins' do
    srand(2)
    sign_in_and_play
    choose 'Paper'
    click_button 'Submit'
    expect(page).to have_content "Nigel wins!"
  end

  scenario 'computer wins' do
    srand(3)
    sign_in_and_play
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content "Computer wins!"
  end

  scenario 'draw' do
    srand(2)
    sign_in_and_play
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end
end
