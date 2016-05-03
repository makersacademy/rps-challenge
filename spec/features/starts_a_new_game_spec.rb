
feature "starts a new game" do
  scenario "takes back to home screen to start again" do
    p1_wins_vs_p2
    click_button 'Start New Game?'
    message = "Lets play Rock, Paper, Scissors!"
    expect(page).to have_content message
  end
end
