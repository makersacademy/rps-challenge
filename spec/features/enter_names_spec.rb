feature 'Players can enter names' do
  scenario 'Player 1 plays as Smoky, Computer as Penelope' do
    sign_in_and_play
    expect(page).to have_content 'Smoky vs. Penelope'
  end
end