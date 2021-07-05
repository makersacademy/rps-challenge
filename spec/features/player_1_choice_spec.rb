feature 'choosing rock, paper, or scissors' do
  scenario 'has all choices on choice page' do
    single_player
    expect(page).to have_button(value: 'Rock')
    expect(page).to have_button(value: 'Paper')
    expect(page).to have_button(value: 'Scissors')
    expect(page).to have_button(value: 'Spock')
    expect(page).to have_button(value: 'Lizard')
  end
end