feature 'RPS Two Player' do

  before do
    two_players
  end

  scenario 'User wins' do
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content("Symion won!\nSymion: Rock | Sandy: Scissors")
  end

  scenario 'User loses' do
    click_button('Paper')
    click_button('Scissors')
    expect(page).to have_content("Sandy won!\nSymion: Paper | Sandy: Scissors")
  end

  scenario 'User draws' do
    click_button('Scissors')
    click_button('Scissors')
    expect(page).to have_content("It's a draw!\nSymion: Scissors | Sandy: Scissors")
  end

end
