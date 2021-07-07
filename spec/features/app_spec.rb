require './spec/features/helper'
feature 'RPS' do
  scenario 'welcome player on the homepage' do
    visit('/')
    expect(page).to have_content "Hello there,  player! \n welcome to the RPS game, please fill in your name down below:"
  end

  scenario 'player fills in the name form' do
    repetetive_method
  end

  scenario 'player clicks a button"' do
    repetetive_method
    expect(page).to have_selector(:button, 'paper')
    expect(page).to have_selector(:button, 'rock')
    expect(page).to have_selector(:button, 'scissors')
  end

  scenario "player chooses paper" do
    repetetive_method
    click_button 'paper'
    expect(page).to have_content "paper"
  end

    scenario "player chooses rock" do
      repetetive_method
      click_button 'rock'
    expect(page).to have_content "rock"
  end

  scenario "player chooses scissors" do
    repetetive_method
    click_button 'scissors'
  expect(page).to have_content "scissors"
end
end 
