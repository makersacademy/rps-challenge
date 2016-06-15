feature 'Announces winner' do

  scenario 'anounces whether the player or computer has won' do
    srand(123)
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    click_button 'OK'
    click_button 'OK'
    expect(page).to have_content("And the winner is:")
  end

end