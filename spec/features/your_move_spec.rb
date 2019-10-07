feature 'allows player to make a move' do
  scenario 'allows player to pick one of 3 moves' do
    sign_in_and_play
    click_button 'Shazam!'
    expect(page).to have_content('Rock')
  end
end

feature 'allows player to make a move' do
  scenario 'allows player to pick one of 3 moves' do
    sign_in_and_play
    click_button 'Shazam!'
    expect(page).to have_content('Paper')
  end
end

feature 'allows player to make a move' do
  scenario 'allows player to pick one of 3 moves' do
    sign_in_and_play
    click_button 'Shazam!'
    expect(page).to have_content('Scissors')
  end
end
