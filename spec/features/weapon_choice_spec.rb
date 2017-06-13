
feature 'Game stores the choice of weapon' do
  scenario 'player will see their choice displayed after picking it' do
    play_as_rock
    expect(page).to have_content "Rock"
  end

  scenario 'player will see a randomly chosen opposing weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    play_as_rock
    expect(page).to have_content "Rock VS. Scissors"
  end
end
