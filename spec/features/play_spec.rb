feature 'Register Name Page' do
  scenario 'has title at top of page' do
    visit('/')
    expect(page).to have_content "ROCK PAPER SCISSORS"
  end

  scenario 'has subtitle below title' do
    visit('/')
    expect(page).to have_content "THE TIMELESS CLASSIC"
  end

  scenario 'has player name below divider line' do
    visit('/')
    fill_in :player_1_name, with: 'katie'
    click_button 'PLAY'
    expect(page).to have_content 'PLAYER // KATIE        SCORE // 0'
  end
end
