feature 'winning the game' do
  scenario 'after selecting their weapon, the computer picks a weapon' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'Submit'
    click_button 'Let\'s see'
    expect(page).to have_content 'The computer chose'
  end

end
