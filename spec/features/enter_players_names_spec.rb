feature 'Enter player name' do
  scenario 'submitting player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Doby!'
  end

  scenario 'redirect to play page' do
    sign_in_and_play
    expect(current_path).to eq '/play'
  end

end