feature 'Make a move' do

  scenario 'Player chooses rock' do
    visit('/')
    fill_in :player_name, with: 'Jay'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'rock')
  end

  scenario 'Player chooses Paper' do
    visit('/')
    fill_in :player_name, with: 'Jay'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'paper')
  end

  scenario 'Player chooses Scissors' do
    visit('/')
    fill_in :player_name, with: 'Jay'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'scissors')
  end

end
