
feature 'Points' do
  scenario 'Visability on Player and computer points' do
    sign_in_and_play
    expect(page).to have_content 'Player: 0'
    expect(page).to have_content 'Computer: 0'
  end

  scenario 'Clicks Rock Button' do
    visit('/')
    fill_in :player_name, with: 'Player'
    click_button 'Play'
    srand(1)
    click_button 'Paper'
    expect(page).to have_content 'Player played Paper and Computer played Rock'
    expect(page).to have_content 'Player: 1'
  end
end
