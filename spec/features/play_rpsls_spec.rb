feature 'play the game of rock paper scissors lizard spock' do

  scenario 'see rock paper scissors lizard spock page' do
    visit('/')
    click_link 'rpsls'
    expect(page).to have_content 'Rock Paper Scissors Lizard Spock'
  end

  scenario 'playing a single player game' do
    sign_in_and_play_rpsls
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    play_rock
    expect(page).to have_content 'Hulk wins!'
  end

  scenario 'playing a multiplayer game' do
    multiplayer_start_rpsls
    play_spock
    play_lizard
    expect(page).to have_content 'Hulk loses!'
  end

end