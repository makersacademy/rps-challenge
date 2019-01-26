describe "2 Player mode", type: :feature do
  before(:each) do
    sign_in_two_player
  end
  
  it 'starts 2-player mode if two names are given.' do
    expect(page).to have_content("someguy V otherguy")
  end
  it 'allows both players to enter their moves' do
    click_on "rock"
    click_on "paper"
  end
  it 'displays whose turn it is' do
    expect(page).to have_content("someguy's turn")
    click_on "rock"
    expect(page).to have_content("otherguy's turn")
  end

  it 'shows the winner' do
    click_on "rock"
    click_on "paper"
    expect(page).to have_content("otherguy wins!")
  end
end
