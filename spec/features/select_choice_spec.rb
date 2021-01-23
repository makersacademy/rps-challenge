feature 'After user has selected shape' do
    scenario 'shows user has selected rock' do
    sign_in_and_play
    click_button 'Rock'
expect(page).to have_content('You selected Rock')
end
scenario 'shows user has selected paper' do
    sign_in_and_play
    click_button 'Paper'
expect(page).to have_content('You selected Paper')
end
scenario 'shows user has selected scissors' do
    sign_in_and_play
    click_button 'Scissors'
expect(page).to have_content('You selected Scissors')
end
end