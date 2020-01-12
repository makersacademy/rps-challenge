feature 'Multiplayer Game' do
  scenario 'Moves are shown' do
    sign_in_and_play_multiplayer
    expect(page).to have_content("Spock")
  end
  scenario 'Moves can be submitted' do
    sign_in_and_play_multiplayer
    expect(page).to have_selector(:link_or_button, 'Play Move!')
  end
  scenario 'First Player name is shown' do
    sign_in_and_play_multiplayer
    expect(page).to have_content("It's Chris's Turn!")
  end
  scenario 'Second player name is shown after first submit' do
    sign_in_and_play_multiplayer
    choose('lizard')
    click_button('Play Move!')
    expect(page).to have_content("It's James's Turn!")
  end
  scenario 'Default name used if form left empty' do
    visit("/")
    click_button('Multiplayer')
    click_button('Start Game!')
    expect(page).to have_content("It's Player 1's Turn!")
    choose('lizard')
    click_button('Play Move!')
    expect(page).to have_content("It's Player 2's Turn!")
  end
end
