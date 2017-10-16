feature 'results page' do
  # scenario 'the screen shows the user choice' do
  #   sign_in_and_play
  #   click_button 'Rock'
  #   expect(page).to have_content "You chose rock!"
  # end
  scenario 'the screen displays the result' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content(/won|lose|drew/)
  end
end
