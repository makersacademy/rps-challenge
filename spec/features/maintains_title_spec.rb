
feature "Keeps player name across pages" do

  scenario "Has name after clicking rock" do
    sign_in_and_play
    click_button 'rock'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Has name after clicking scissors" do
    sign_in_and_play
    click_button 'scissors'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Has name after clicking paper" do
    sign_in_and_play
    click_button 'paper'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end

  scenario "Has name after clicking play again" do
    sign_in_and_play
    click_button 'paper'
    click_button 'Play Again?'
    message = "Wayne Vs. Computer"
    expect(page).to have_content message
  end


end
