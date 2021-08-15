feature 'result' do
  scenario 'player wins' do
    allow_any_instance_of(Npc).to receive(:selection).and_return('Scissors')
    begin_game
    choose_rock
    expect(page).to have_content('You win!')
  end

  scenario 'player loses' do
    allow_any_instance_of(Npc).to receive(:selection).and_return('Paper')
    begin_game
    choose_rock
    expect(page).to have_content('You lose...')
  end

  scenario 'tie' do
    allow_any_instance_of(Npc).to receive(:selection).and_return('Rock')
    begin_game
    choose_rock
    expect(page).to have_content("It's a tie")
  end
end
