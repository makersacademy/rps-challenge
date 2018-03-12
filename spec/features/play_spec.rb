feature 'Play Page' do
  scenario 'has title at top of page' do
    visit('/')
    expect(page).to have_content "ROCK PAPER SCISSORS"
  end

  scenario 'has subtitle below title' do
    visit('/')
    expect(page).to have_content "THE TIMELESS CLASSIC"
  end

  scenario 'has player name and score below buttons' do
    visit('/')
    fill_in :player_1_name, with: 'katie'
    click_button 'PLAY'
    expect(page).to have_content 'KATIE: 0'
    expect(page).to have_content 'COMPUTER: 0'
  end
end
