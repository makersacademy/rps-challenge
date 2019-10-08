feature 'Game over' do

  scenario 'when both players have had a go' do
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_content 'Game over'
  end

  scenario 'shows what move both players played' do
    allow_any_instance_of(Robot).to receive(:choice).and_return("Scissors")
    allow_any_instance_of(Player).to receive(:choice).and_return("Rock")
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_content 'Jess chose Rock and Robot chose Scissors'
  end

  scenario 'when players draw' do
    allow_any_instance_of(Robot).to receive(:choice).and_return("Rock")
    allow_any_instance_of(Player).to receive(:choice).and_return("Rock")
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'option to play again' do
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_button "Play again"
  end

  scenario 'when player 1 loses' do
    allow_any_instance_of(Robot).to receive(:choice).and_return("Paper")
    allow_any_instance_of(Player).to receive(:choice).and_return("Rock")
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_content "Robot is the winner!"
  end

  scenario 'when player 1 wins' do
    allow_any_instance_of(Robot).to receive(:choice).and_return("Rock")
    allow_any_instance_of(Player).to receive(:choice).and_return("Paper")
    sign_in_sp_start_game
    click_button 'Submit'
    expect(page).to have_content "Jess is the winner!"
  end
end
