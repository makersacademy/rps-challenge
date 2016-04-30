feature 'Attack options' do
  scenario 'page has radio buttons to select your RPS attack' do
    sign_in_and_play
    choose "ROCK"
    choose "PAPER"
    choose "SCISSORS"
  end
end