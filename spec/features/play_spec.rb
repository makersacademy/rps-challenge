feature 'play the game' do
  scenario 'select rock' do
    sign_in_to_play
    click_button('rock')
    expect(page).to have_content('You have selected: Rock')
  end

  scenario 'select paper' do
    sign_in_to_play
    click_button('paper')
    expect(page).to have_content('You have selected: Paper')
  end

  scenario 'select scissors' do
    sign_in_to_play
    click_button('scissors')
    expect(page).to have_content('You have selected: Scissors')
  end
end
