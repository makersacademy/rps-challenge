RSpec.feature 'play_spec: player1s turn:' do

  scenario 'should have player1s name in singlemode ' do
    singlemode
    expect(page).to have_content("player1")
  end

  scenario 'should have both players name in multimode' do
    multimode
    expect(page).to have_content("player1 vs. player2")
  end

  scenario 'should have player1s turn to pick weapon' do
    singlemode
    expect(page).to have_content("Pick your weapon player1:")
  end

  scenario 'should have choice buttons' do
    singlemode
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

end
