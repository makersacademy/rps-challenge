feature 'homepage' do
  scenario 'player enters name' do
    visit('/')
    fill_in('player_name', with: 'Amanda')
    click_button('Submit')
    expect(page).to have_content 'Amanda, get ready to play!'
  end
end

feature 'moves' do
  scenario 'player sees moves' do
    visit('/')
    fill_in('player_name', with: 'Amanda')
    click_button('Submit')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end