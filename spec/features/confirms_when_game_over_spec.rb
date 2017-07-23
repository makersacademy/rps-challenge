feature "confirming the winner of the game" do
  scenario "human player wins" do
    sign_in_and_play('Alex')
    srand(1)
    click_button 'scissors'
    click_button 'paper'
    expect(page).to have_content 'Alex is the winner!'
  end
end
