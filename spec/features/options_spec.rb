feature 'Player options' do
  
  # how do I stub the randomness in the computers response???
  scenario 'provides user with playing options' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end

  scenario 'confirms the selection of the player' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    click_button 'ROCK'
    expect(page).to have_content('You selected ROCK')
  end



end