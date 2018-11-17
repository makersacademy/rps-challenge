
feature 'Testing data entry' do
  scenario 'goes through 1p process (Rock)' do
    visit('/')
    click_button '1 player'
    fill_in :p1_name, with: 'Player_1'
    click_button 'Submit'
    select('Rock', from: 'select')
    click_button 'Submit'
    expect(page).to have_content('Player_1 move: Rock')
  end

  scenario 'goes through 1p process (Paper)' do
    visit('/')
    click_button '1 player'
    fill_in :p1_name, with: 'Player_1'
    click_button 'Submit'
    select('Paper', from: 'select')
    click_button 'Submit'
    expect(page).to have_content('Player_1 move: Paper')
  end

  scenario 'goes through 2p process (Paper / Rock)' do
    visit('/')
    click_button '2 player'
    fill_in :p1_name, with: 'Player_1'
    fill_in :p2_name, with: 'Player_2'
    click_button 'Submit'
    select('Paper', from: 'select_p1')
    select('Rock', from: 'select_p2')
    click_button 'Submit'
    expect(page).to have_content('Player_1 has Won')
    expect(page).to have_content('Player_1 move: Paper')
  end

  scenario 'goes through 2p process (Paper / Sissors)' do
    visit('/')
    click_button '2 player'
    fill_in :p1_name, with: 'Player_1'
    fill_in :p2_name, with: 'Player_2'
    click_button 'Submit'
    select('Paper', from: 'select_p1')
    select('Sissors', from: 'select_p2')
    click_button 'Submit'
    expect(page).to have_content('Player_2 has Won')
    expect(page).to have_content('Player_2 move: Sissors')
  end

  scenario 'goes through 2p process (Paper / Paper)' do
    visit('/')
    click_button '2 player'
    fill_in :p1_name, with: 'Player_1'
    fill_in :p2_name, with: 'Player_2'
    click_button 'Submit'
    select('Paper', from: 'select_p1')
    select('Paper', from: 'select_p2')
    click_button 'Submit'
    expect(page).to have_content('Its a draw')
    expect(page).to have_content('Player_1 move: Paper')
  end
end
