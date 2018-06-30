require "./rps.rb"

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Playing game' do
  scenario 'Player 1 selects rock and wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    register_and_play
    select_option_rock
    expect(page).to have_content('WOU WON!')
  end

  scenario 'Player 1 selects rock and loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_and_play
    select_option_rock
    expect(page).to have_content('WOU LOST!')
  end

  scenario 'Player 1 selects rock and draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    register_and_play
    select_option_rock
    expect(page).to have_content('IT WAS A DRAW!')
  end
end
