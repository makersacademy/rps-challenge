feature 'game in play' do

  scenario 'see the options' do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'choose an option' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'game chooses an option' do
    sign_in_and_play
    click_button "Paper"
    message = find(:css, "#computer").text.strip
    expect(possible_message).to include message
  end

  scenario 'game chooses a random option' do
    sign_in_and_play
    srand(2223)
    click_button "Paper"
    expect(page).to have_content "Computer chose Rock"
  end

  scenario 'player wins' do
    sign_in_and_play
    srand(2223)
    click_button "Paper"
    expect(page).to have_content "You win!"
  end

end
