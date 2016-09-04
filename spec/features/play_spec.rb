require 'spec_helper'

describe RockPaperScissors do

  feature 'display points' do

    scenario 'at startup it should display initial points as 0' do
      sign_in_and_play
      expect(page).to have_text("Matthew: 0")
    end

  end

  feature 'display correct turn' do

    scenario "at startup it should be player_one's turn" do
      sign_in_and_play
      expect(page).to have_text("It's your turn Matthew")
    end

    scenario "after playing 'rock' it should be player_two's turn" do
      sign_in_and_play
      click_button("Rock")
      expect(page).to have_text("It's your turn Rafaela")
    end

    scenario "after playing 'paper' it should be player_two's turn" do
      sign_in_and_play
      click_button("Paper")
      expect(page).to have_text("It's your turn Rafaela")
    end

    scenario "after playing 'scissors' it should be player_two's turn" do
      sign_in_and_play
      click_button("Scissors")
      expect(page).to have_text("It's your turn Rafaela")
    end

  end

  feature 'should show the correct winner' do

    scenario "rock v scissors = rock" do
      sign_in_and_play
      click_button("Rock")
      click_button("Scissors")
      expect(page).to have_text("Matthew wins!")
    end

    scenario "rock v paper = paper" do
      sign_in_and_play
      click_button("Rock")
      click_button("Paper")
      expect(page).to have_text("Rafaela wins!")
    end

    scenario "rock v rock = draw" do
      sign_in_and_play
      click_button("Rock")
      click_button("Rock")
      expect(page).to have_text("It's a draw!")
    end

    scenario "scissors v scissors = draw" do
      sign_in_and_play
      click_button("Scissors")
      click_button("Scissors")
      expect(page).to have_text("It's a draw!")
    end

    scenario "scissors v paper = scissors" do
      sign_in_and_play
      click_button("Scissors")
      click_button("Paper")
      expect(page).to have_text("Matthew wins!")
    end

    scenario "scissors v rock = rock" do
      sign_in_and_play
      click_button("Scissors")
      click_button("Rock")
      expect(page).to have_text("Rafaela wins!")
    end

    scenario "paper v paper = draw" do
      sign_in_and_play
      click_button("Paper")
      click_button("Paper")
      expect(page).to have_text("It's a draw!")
    end

    scenario "paper v rock = rock" do
      sign_in_and_play
      click_button("Paper")
      click_button("Rock")
      expect(page).to have_text("Matthew wins!")
    end

    scenario "paper v scissors = scissors" do
      sign_in_and_play
      click_button("Paper")
      click_button("Scissors")
      expect(page).to have_text("Rafaela wins!")
    end

  end

end
