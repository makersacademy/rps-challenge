feature 'Attacking' do
  scenario 'player 1 chooses their weapon' do
    sign_in_and_play
    fill_in :choice, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Bob chose the Rock'
  end

  scenario 'show win points so far' do
    sign_in_and_play
    expect(page).to have_content 'Wins so far:'
  end

end
