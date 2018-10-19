feature 'Attacking' do
  scenario 'player 1 chooses their weapon' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'Bob chose the Rock'
  end

  scenario 'show win points so far' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'Wins so far:'
  end

end
