feature 'Shows who won the round' do
  scenario 'Displays who won the round on screen' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content "Computer's Scissors beats Daniel's Paper! Computer wins this round!"
  end

  scenario 'shows score' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content "Daniel's score: 1 Computer's score: 0"
  end
end
