
feature "starts a new game" do
  scenario "takes back to home screen to start again" do
    sign_in_and_play
    click_button 'rock'
    click_button 'Start New Game?'
    message = "Lets play Rock, Paper, Scissors!"
    expect(page).to have_content message
  end
end
