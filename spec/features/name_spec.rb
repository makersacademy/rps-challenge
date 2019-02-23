feature 'enter name' do
  scenario'Player enters name' do
    visit '/'
    fill_in 'player', with: 'Anu'
    click_button 'Play'
    expect(page).to have_content 'Anu Vs Computer'
  end
  end
