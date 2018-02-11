feature "Result" do

  before(:each) { sign_in_and_play }

  scenario "player wins" do
    allow_any_instance_of(Game).to receive(:player_win?).and_return(true)
    click_on('Rock')
    expect(page).to have_content('Laura wins this game')
  end

  scenario 'player loses' do
    allow_any_instance_of(Game).to receive(:player_win?).and_return(false)
    click_on('Rock')
    expect(page).to have_content('Computer wins this game')
  end

  scenario 'game draws' do
    allow_any_instance_of(Game).to receive(:player_win?).and_return(nil)
    click_on('Rock')
    expect(page).to have_content("It's a draw")
  end

  it 'allows the player to play another game' do
    click_on('Rock')
    click_on('Play again')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
