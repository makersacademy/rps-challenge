# User story
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Single player game play:' do
  let(:computer) { ComputerPlayer.new }
  scenario 'Player: Rock; Computer: Scissors' do
    create_CK_player # from web_helper
    computer.make_selection
    play_rock  # from web_helper
    expect(page).to have_content(
      "Captain Kirk, you played 'Rock'. #{computer.name} played 'Scissors'. You win!"
    )
  end
end