feature 'Entering names' do
  scenario 'Players enter their name' do
    multi_sign_in_and_play
    expect(page).to have_content "Player1 vs Player2"
  end
end
