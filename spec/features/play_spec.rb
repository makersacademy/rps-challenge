feature 'play the game' do
  scenario 'select rock' do
    sign_in_to_play
    click_button('Rock')
    expect(page).to have_content('You have selected: Rock')
  end

  scenario 'select paper' do
    sign_in_to_play
    click_button('Paper')
    expect(page).to have_content('You have selected: Paper')
  end

  scenario 'select scissors' do
    sign_in_to_play
    click_button('Scissors')
    expect(page).to have_content('You have selected: Scissors')
  end
end
