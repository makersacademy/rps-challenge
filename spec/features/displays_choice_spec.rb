feature 'Displays both players\' choices' do
  
  scenario 'displays confirmation of user\'s choice' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    expect(page).to have_content('You selected PAPER')
  end

  # how can I stub the computers random choice in a feature test???
  scenario 'displays the computer\'s choice' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    click_button 'OK'
    expect(page).to have_content("The Computer has selected")
  end

end