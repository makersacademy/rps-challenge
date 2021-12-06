feature 'player name' do
  scenario 'player can enter name' do
    sign_in_and_play
    expect(page).to have_content("Welcome kenny to a game of Rock, Paper, Sissors")
  end
end
