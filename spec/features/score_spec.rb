feature 'Keeping Score' do
  scenario 'Player 1s Score' do
    sign_in_and_play
    expect(page).to have_content "Steve's Score: 0"
  end
end
