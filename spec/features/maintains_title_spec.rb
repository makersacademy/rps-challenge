
feature "Keeps player name across pages" do

  scenario "Has names after clicking paper" do
    sign_in_and_play_computer
    click_button 'paper'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Has names after clicking play again" do
    sign_in_and_play_computer
    click_button 'paper'
    click_button 'Play Again?'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Has names after clicking rock" do
    sign_in_and_play_human
    click_button 'rock'
    message = "Wayne Vs. Jimmy"
    expect(page).to have_content message
  end

  scenario "Has names after clicking player 2 chooses" do
    sign_in_and_play_human
    click_button 'paper'
    click_button 'paper'
    message = "Wayne Vs. Jimmy"
    expect(page).to have_content message
  end

  scenario "Has names after clicking play again chooses" do
    sign_in_and_play_human
    click_button 'paper'
    click_button 'paper'
    click_button 'Play Again?'
    message = "Wayne Vs. Jimmy"
    expect(page).to have_content message
  end

end
