describe "2 Player mode", type: :feature do
  it 'starts 2-player mode if two names are given.' do
    sign_in_two_player
    expect(page).to have_content("someguy V otherguy")
  end
  it 'allows both players to enter their moves'
  it 'shows the winner'
end
