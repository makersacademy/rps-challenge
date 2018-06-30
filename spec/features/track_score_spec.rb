feature 'Shows who won the round' do
  scenario 'Displays who won the round on screen' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content "Computer's Paper beats Daniel's Rock! Computer wins this round!"
  end

  scenario 'shows score' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content "Player Daniel Computer Score 1 0"
  end
end
