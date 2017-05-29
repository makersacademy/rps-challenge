
feature 'Player is shown result of game' do
  scenario 'player is told that they have won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    play_as_rock
    click_button("Let's go!")
    expect(page).to have_content "You win!"
  end
end
