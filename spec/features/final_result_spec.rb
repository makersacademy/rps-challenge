feature 'Final result' do
  scenario 'Expect player to win' do
    srand(67809)
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Gruntilda wins'
  end
  scenario 'Expect computer to win' do
    srand(67810)
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Computer wins'
  end
  scenario 'Expect player to win' do
    srand(67810)
    visit('/')
    fill_in :player_1_name, with: 'Gruntilda'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "It's a draw!"
  end
end