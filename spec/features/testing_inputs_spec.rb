
feature 'Testing data entry' do
  scenario 'goes through 1p process (Rock)' do
    visit('/')
    click_button '1 player'
    fill_in :p1_name, with: 'player_1'
    click_button 'Submit'
    select('Rock', from: 'select')
    click_button 'Submit'
    expect(page).to have_content('player_1')
    expect(page).to have_content('player_1 move: Rock')
  end

  scenario 'goes through 1p process (Paper)' do
    visit('/')
    click_button '1 player'
    fill_in :p1_name, with: 'player_1'
    click_button 'Submit'
    select('Paper', from: 'select')
    click_button 'Submit'
    expect(page).to have_content('player_1')
    expect(page).to have_content('player_1 move: Paper')
  end
end
