feature 'playing a game' do
  scenario 'see shape options' do
    sign_in_and_submit
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario "choose a shape" do
    sign_in_and_submit
    click_button "Rock"
    expect(page).to have_content "You chose rock!"
  end

  scenario "game to chose an option" do
    sign_in_and_submit
    click_button "Rock"
    message = find(:css, "#opponent").text.strip
    expect(possible_messages).to include message
  end

  scenario "game to chose a random option" do
    sign_in_and_submit
    srand(221563)
    click_button "Rock"
    expect(page).to have_content "Opponent chose Scissors"
  end

  scenario 'I can win' do
    sign_in_and_submit
    srand(221563)
    click_button "Rock"
    expect(page).to have_content "You win!"
  end

  scenario 'If I lose' do
    sign_in_and_submit
    srand(221563)
    click_button "Paper"
    expect(page).to have_content "You lose!"
  end

  scenario 'If I draw' do
    sign_in_and_submit
    srand(221563)
    click_button "Scissors" 
    expect(page).to have_content "You draw!"
  end

end
