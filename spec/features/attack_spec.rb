feature "attack" do

  scenario "lets user pick among rock as weapon and gets confirmation" do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'You chose to use rock. Good luck Marcello!'
  end

  scenario "lets user pick paper as weapon and gets confirmation" do
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'You chose to use paper. Good luck Marcello!'
  end

  scenario "lets user pick among scissors as weapon and gets confirmation" do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'You chose to use scissors. Good luck Marcello!'
  end

end