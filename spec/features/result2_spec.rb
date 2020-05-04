feature 'Result' do 
  scenario 'scissors vs paper' do
    visit '/'
    click_button '2 Player'
    fill_in :player1, with: 'Ellis'
    fill_in :player2, with: 'Mcnulty'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Paper'
    expect(page).to have_content "Ellis Wins! Scissors beats Paper"
  end
  scenario 'scissors vs rock' do 
    visit '/'
    click_button '2 Player'
    fill_in :player1, with: 'Ellis'
    fill_in :player2, with: 'Mcnulty'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Rock'
    expect(page).to have_content "Mcnulty Wins! Rock beats Scissors"
  end
  scenario 'scissors vs scissors' do 
    visit '/'
    click_button '2 Player'
    fill_in :player1, with: 'Ellis'
    fill_in :player2, with: 'Mcnulty'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Scissors'
    expect(page).to have_content "it's a Draw! Scissors cancels out Scissors"
  end
end