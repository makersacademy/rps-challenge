feature 'Choose' do
  scenario 'show all 3 options being rock, paper and scissors' do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'user chooses one of the options' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "You chose Rock!"
  end

  TEST_SEED_SCISSORS = 12
  scenario 'the bot chooses Paper' do
    sign_in_and_play
    click_button("Paper")
    # This is a built in capybara selector that selects elements by CSS
    message = find(:css, "#bot").text
    expect(all_bot_options).to include message
  end

  scenario 'the bot chooses a random option' do
    sign_in_and_play
    srand(TEST_SEED_SCISSORS)
    click_button("Rock")
    expect(page).to have_content "Bot chooses Scissors!"
  end
end
