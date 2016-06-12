feature 'Ends turn' do  

  scenario 'ends a players turn after submitting choice' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    click_button 'ROCK'
    click_button 'OK'
    expect(page).to have_content('Computer, it\'s your turn')
  end

end
