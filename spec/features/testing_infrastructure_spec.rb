feature '#Home Page' do
  scenario 'Should be greeted with sign in page' do
    visit '/'
    expect(page).to have_content 'Player Name:'
  end

  scenario 'Should be able to fill in player name' do
    visit '/'
    fill_in :player_1, with: 'Felix'
    click_button 'Submit'
    # sign_in_and_play
    expect(page).to have_text('Felix')
  end
end
