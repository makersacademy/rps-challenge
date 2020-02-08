feature 'get players' do
  scenario 'player enters name' do
    sign_in_and_play

    expect(page).to have_content "Player Name: Liz"
  end
end
