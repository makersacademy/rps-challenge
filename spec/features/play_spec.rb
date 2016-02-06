feature 'play the game' do

  scenario 'player can choose "Rock"' do
    sign_in
    choose('choice', option: 'Rock')
    click_button('Submit')
    expect(page).to have_content('Your choice: Rock')
  end

  scenario 'player can choose "Paper"' do
    sign_in
    choose('choice', option: 'Paper')
    click_button('Submit')
    expect(page).to have_content('Your choice: Paper')
  end

  scenario 'player can choose "Scissors"' do
    sign_in
    choose('choice', option: 'Scissors')
    click_button('Submit')
    expect(page).to have_content('Your choice: Scissors')
  end


end
