feature 'Enter player name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_name, with: 'Doby'
    click_button('Play')
    expect(page).to have_content 'Welcome Doby!'
  end

  scenario 'redirect to play page' do
    visit('/')
    fill_in :player_name, with: 'Doby'
    click_button('Play')
    expect(current_path).to eq '/play'
  end

end