require 'spec_helper'

describe RockPaperScissors do

  feature 'display points' do

    scenario 'at startup it should display initial points as 0' do
      sign_in_and_play
      expect(page).to have_text("Matthew 0")
    end

  end

  feature 'display correct turn' do

    scenario "at startup it should be player_one's turn" do
      sign_in_and_play
      expect(page).to have_text("Matthew's turn")
    end

    scenario "after playing 'rock' it should be player_two's turn" do
      sign_in_and_play
      click_button("Rock")
      expect(page).to have_text("Rafaela's turn")
    end

    scenario "after playing 'paper' it should be player_two's turn" do
      sign_in_and_play
      click_button("Paper")
      expect(page).to have_text("Rafaela's turn")
    end

    scenario "after playing 'scissors' it should be player_two's turn" do
      sign_in_and_play
      click_button("Scissors")
      expect(page).to have_text("Rafaela's turn")
    end

  end

end
