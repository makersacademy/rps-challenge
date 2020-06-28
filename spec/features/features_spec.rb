feature 'Enter names' do
  scenario 'Player enters their name and is welcomed to the game' do
    sign_in_and_play
  end
  scenario 'Player is presented with three choices to play the game' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'You chose rock'
  end
  scenario 'Player is presented with three choices to play the game' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content 'You chose paper'
  end
  scenario 'Player is presented with three choices to play the game' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'You chose scissors'
  end
  scenario 'computer has random choice that is shown on the screen' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer chose"
  end
  scenario 'computer has random choice that is shown on the screen' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content "Computer chose"
  end

  scenario 'computer has random choice that is shown on the screen' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content "Computer chose"
  end
end
