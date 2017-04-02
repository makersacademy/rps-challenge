feature 'result of choice' do
  scenario "first round started should show round number"  do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content "Round 1"
  end

  scenario "second round should show round number"  do
    register_and_play
    click_button 'Rock'
    click_button 'Play again'
    click_button 'Paper'
    expect(page).to have_content "Round 2"
  end

end
