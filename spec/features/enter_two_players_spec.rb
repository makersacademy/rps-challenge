describe "2 Player mode", type: :feature do
  it 'starts 2-player mode if two names are given.' do
    sign_in_two_player
    expect(page).to have_content("someguy V otherguy")
  end
  it 'allows both players to enter their moves' do
    click_on "2prock"
    click_on "2ppaper"
  end
  it 'displays whose turn it is' do
    expect(page).to have_content("someguy's turn")
    click_on "2prock"
    click_on "2ppaper"
  end

  it 'shows the winner' do
    click_on "1prock"
    click_on "2ppaper"
    expect(page).to have_content("otherguy wins!")
  end
end
