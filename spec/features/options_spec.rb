feature 'Player options' do
  
  # how do I stub the randomness in the computers response???
  scenario 'provides user with playing options' do
    visit ('/')
    fill_in :player_name, with: 'Paul'
    click_button 'Submit'
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end



end