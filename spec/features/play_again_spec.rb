feature 'Play again' do
  scenario "When I win a game I am asked if I want to play again" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_with_rock_and_play
    expect(page).to have_content 'You were lucky chump. Wanna try again?'
  end

  scenario "When I lose a game I am asked if I want to play again" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_with_rock_and_play
    expect(page).to have_content 'Want some more pain loser?'
  end

  scenario "When I draw a game I am asked if I want to play again" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_with_rock_and_play
    expect(page).to have_content 'Is that all you got? Wanna try again?'
  end
end
