feature 'Displaying a win or draw' do

  it "should display both the player and computer's moves" do
    player_vs_computer
    click_button "Rock"
    expect(page).to have_content "You choose: Rock"
    expect(page).to have_content "Computer choose:"
  end

  it "should display the winner or call the game a draw" do
    player_vs_computer
    click_button "Rock"
    expect(page).to have_content "!"
  end
end