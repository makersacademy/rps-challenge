feature 'outcome of the game' do
  scenario "the winner is shown" do
    allow_any_instance_of(Game).to receive(:choice).and_return('Scissors')
    start_game
    click_button 'Rock'
    expect(page).to have_content('Rock wins!') 
  end
  scenario "a draw is shown" do
    allow_any_instance_of(Game).to receive(:choice).and_return('Rock')
    start_game
    click_button 'Rock'
    expect(page).to have_content("It's a draw!")
  end
end
