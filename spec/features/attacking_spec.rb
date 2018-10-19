feature 'Attacking' do
  scenario 'player 1 chooses their weapon' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'Bob chose the Rock'
  end
end
