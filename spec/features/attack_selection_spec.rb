
feature "displays selected action on next page" do

  scenario "clicking rock button displays player selection" do
    sign_in_and_play
    click_button 'rock'
    message = "You Played:\nrock"
    expect(page).to have_content message
  end

  scenario "clicking rock button displays player selection" do
    sign_in_and_play
    click_button 'paper'
    message = "You Played:\npaper"
    expect(page).to have_content message
  end

  scenario "clicking rock button displays player selection" do
    sign_in_and_play
    click_button 'scissors'
    message = "You Played:\nscissors"
    expect(page).to have_content message
  end

end
