feature "should display results page" do

  scenario "should thank user for playing" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Thank you for playing!')
  end

  scenario "should show who won" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('is the winner!')
  end

  scenario "should show what the user played" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You played Rock.')
  end

  scenario "should show what the computer played" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computer played')
  end
end

feature "play again" do
  scenario "should ask the user if they want to play again" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Click to play again:')
  end

  scenario "should be a button to play again" do
    sign_in_and_play
    click_button('Rock')
    expect(page.has_button?('Play again!')).to be_truthy
  end

  scenario "pressing button should let user play again" do
    sign_in_and_play
    click_button('Rock')
    click_button('Play again!')
    expect(page).to have_content('Please select a move.')
  end

end
