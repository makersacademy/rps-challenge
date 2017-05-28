feature 'Playing the game' do
  scenario 'Player can choose either rock and get confirmation' do
    visit('/')
    fill_in('player1', with: 'Sam')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You have chosen Rock'
  end
  scenario 'Player can choose paper and get confirmation' do
    visit('/')
    fill_in('player1', with: 'Sam')
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content 'You have chosen Paper'
  end
  scenario 'Player can choose scissors and get confirmation' do
    visit('/')
    fill_in('player1', with: 'Sam')
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content 'You have chosen Scissors'
  end
end
