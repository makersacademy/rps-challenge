feature 'Playing RPS' do
  scenario 'see move options' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a move' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'game chooses rock' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Rock'
  end
end
