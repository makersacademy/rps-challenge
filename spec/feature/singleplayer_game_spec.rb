feature 'Single Player Game' do
  scenario 'Name is shown' do
    play_singleplayer
    expect(page).to have_content("It's Chris's Turn!")
  end
  scenario 'Moves are shown' do
    play_singleplayer
    expect(page).to have_field('rock')
    expect(page).to have_field('paper')
    expect(page).to have_field('scissors')
    expect(page).to have_field('lizard')
    expect(page).to have_field('spock')
  end
  scenario 'Default move selected' do
    play_singleplayer
    expect(page).to have_checked_field('scissors')
  end
  scenario 'Moves can be submitted' do
    play_singleplayer
    expect(page).to have_selector(:link_or_button, 'Play Move!')
  end
  scenario 'Default name used if form left empty' do
    visit('/')
    choose('Single Player')
    click_button('Play Game!')
    expect(page).to have_content("It's Player 1's Turn!")
  end
end
