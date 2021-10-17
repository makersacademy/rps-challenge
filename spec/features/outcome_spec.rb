
feature 'Outcome page' do

  scenario 'shows the Outcome heading on the correct page' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("Outcome")
  end

  scenario 'shows the weapon selection of the player' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("You chose Paper")
  end
  
  scenario 'shows the weapon selection of the computer' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content("Computer chose")
  end

end
