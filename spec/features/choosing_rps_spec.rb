feature 'player can choose rock paper scissors' do
  scenario 'page has a button for rock' do
    visit('/')
    fill_in :player_name, with: 'Batwoman'
    click_button 'Play!'
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'page has a button for paper' do
    visit('/')
    fill_in :player_name, with: 'Batwoman'
    click_button 'Play!'
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'page has a button for scissors' do
    visit('/')
    fill_in :player_name, with: 'Batwoman'
    click_button 'Play!'
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
