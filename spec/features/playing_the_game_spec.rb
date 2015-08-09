feature 'Playing the game' do
  let(:computer) { double(:computer) }
  scenario 'Making a selection' do
    allow(computer).to receive(:choice) { :paper }
    visit '/one_player_game'
    click_button('rock')
    expect(page).to have_content('You chose rock and the computer chose paper.')
  end
end