feature "Result" do

  scenario "player wins" do
    sign_in_and_play
    allow_any_instance_of(Game).to receive(:player_win?).and_return(true)
    click_on('Rock')
    expect(page).to have_content('Player wins this game')
  end

  scenario 'player loses' do
    sign_in_and_play
    allow_any_instance_of(Game).to receive(:player_win?).and_return(false)
    click_on('Rock')
    expect(page).to have_content('Computer wins this game')
  end

  scenario 'game draws' do
    sign_in_and_play
    allow_any_instance_of(Game).to receive(:player_win?).and_return(nil)
    click_on('Rock')
    expect(page).to have_content("It's a draw")
  end
end
