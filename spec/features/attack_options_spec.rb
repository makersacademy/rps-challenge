feature 'Attack options on /page' do
  scenario 'page has radio buttons to select your RPS attack' do
    sign_in_and_play
    choose "ROCK"
    choose "PAPER"
    choose "SCISSORS"
  end

  scenario 'page has radio buttons for SPOCK and LIZARD' do
    sign_in_and_play
    choose "SPOCK"
    choose "LIZARD"
  end
end