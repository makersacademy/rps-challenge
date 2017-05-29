
feature 'Player is shown result of game' do
  scenario 'player is told that they have won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    play_as_rock
    click_button("Let's go!")
    expect(page).to have_content "You win!"
  end

  scenario 'player is told that they have lost' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    play_as_paper
    click_button("Let's go!")
    expect(page).to have_content "You lose!"
  end

  scenario 'player is told if the result is a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    play_as_scissors
    click_button("Let's go!")
    expect(page).to have_content "It's a draw!"
  end
end
