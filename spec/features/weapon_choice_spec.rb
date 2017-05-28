
feature 'Game stores the choice of weapon' do
  scenario 'player will see their choice displayed after picking it' do
    play_as_rock
    expect(page).to have_content "Rock"
  end
end
