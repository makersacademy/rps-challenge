feature 'Enter player name' do
  scenario 'Player enters name' do
    enter_name
    expect(page).to have_content 'Welcome Doby!'
  end

  scenario 'redirect to play page' do
    enter_name
    expect(current_path).to eq '/play'
  end

end