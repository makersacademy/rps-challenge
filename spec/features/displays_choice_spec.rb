feature 'Displays both players\' choices' do
  
  scenario 'displays confirmation of user\'s choice' do
    visit ('/')
    fill_in :player_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    expect(page).to have_content('You selected PAPER')
  end

  #how can I stub the computers random choice in a feature test???
  scenario 'displays the computer\'s choice' do
    visit ('/')
    fill_in :player_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    expect(page).to have_content("The computer selected")
  end

end