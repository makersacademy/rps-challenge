feature 'result of game' do
  scenario 'once the choice is made, player can their choice displayed' do
    play_and_chose_rock
    expect(page).to have_content 'you have chosen rock'
  end
end
