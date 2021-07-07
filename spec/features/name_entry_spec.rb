feature 'Name entry' do
  scenario 'players enter names' do
    sign_in_and_play
    expect(page).to have_content "Player 1"
  end
end
