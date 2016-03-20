RSpec.feature 'play2_spec: player2s turn:' do

  before do
    multimode
    click_button('Rock')
  end

  scenario '1. should have both players name in multimode' do
    expect(page).to have_content("player1 vs. player2")
  end

  scenario '2. should have player2s turn to pick weapon' do
    expect(page).to have_content("Pick your weapon player2:")
  end

  scenario '3. should have choice buttons' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

end
