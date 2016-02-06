feature 'Enter names' do
  scenario 'displays names in battle' do
    sign_in_and_play
    expect(page).to have_content 'Player1 vs. Player2'
  end


end
