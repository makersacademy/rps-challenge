feature 'Result and option to play again or sign out' do
  # sign_in_and_play
  # click_button "Rock"
  # # expect(page).to (have_content "Welcome #{@name}") and (have_content "Select your weapon")
  # # end

  scenario 'play again' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Play again'
  end

  scenario 'sign out' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Sign out'
  end

end
