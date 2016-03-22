RSpec.feature 'name_spec: Entering player name:' do

  scenario 'submitting name in single player mode' do
    singlemode
    expect(page).to have_content('player1')
  end

  scenario 'submitting names in multiplayer mode' do
    multimode
    expect(page).to have_content('player1')
    expect(page).to have_content('player2')
  end

end
