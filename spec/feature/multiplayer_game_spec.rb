feature 'Multiplayer Game' do
  scenario 'Moves are shown' do
    play_multiplayer
    expect(page).to have_field('rock')
    expect(page).to have_field('paper')
    expect(page).to have_field('scissors')
    expect(page).to have_field('lizard')
    expect(page).to have_field('spock')
  end
  scenario 'Default move selected' do
    play_multiplayer
    expect(page).to have_checked_field('scissors')
  end
  scenario 'Moves can be submitted' do
    play_multiplayer
    expect(page).to have_selector(:link_or_button, 'Play Move!')
  end
  scenario 'First Player name is shown' do
    play_multiplayer
    expect(page).to have_content("It's Chris's Turn!")
  end
  scenario 'Second player name is shown after move' do
    play_multiplayer
    choose('lizard')
    click_button('Play Move!')
    expect(page).to have_content("It's James's Turn!")
  end
  scenario 'Second player move can be submitted' do
    play_multiplayer
    click_button('Play Move!')
    expect(page).to have_selector(:link_or_button, 'Play Move!')
  end
  scenario 'Default name used for player 1 if form left empty' do
    visit('/')
    choose('Multiplayer')
    click_button('Play Game!')
    expect(page).to have_content("It's Player 1's Turn!")
  end
  scenario 'Default name used for player 2 if form left empty' do
    visit('/')
    choose('Multiplayer')
    click_button('Play Game!')
    click_button('Play Move!')
    expect(page).to have_content("It's Player 2's Turn!")
  end
end
