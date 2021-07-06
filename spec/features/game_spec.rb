feature "Shows player's move" do
  scenario "tells the player which move they chose" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
    expect(page).not_to have_content 'You chose: Paper'
    expect(page).not_to have_content 'You chose: Scissors'
  end
end

feature "Shows the opponent's move" do
  scenario "tells the player which move the opponent chose" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Your opponent chose:'
  end
end

feature "Replay" do
  scenario "asks the player if they'd like to play again" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Would you like to play again, Calum?'
  end
  scenario "if yes, redirect to play" do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Yes'
    expect(page.current_url).to eq('http://www.example.com/play')
  end
  scenario "if no, redirect to root URL" do
    sign_in_and_play
    click_button 'Rock'
    click_button 'No'
    expect(page.current_url).to eq('http://www.example.com/')
  end
end
