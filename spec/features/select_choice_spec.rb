require 'spec_helper'

feature 'select between a choice of rock, paper or scissors' do
  feature 'set a "choice" variable' do
    scenario 'with a "Rock" button' do
      add_name_and_play
      expect(page).to have_button("Rock")
    end
    scenario 'with a "Paper" button' do
      add_name_and_play
      expect(page).to have_button("Paper")
    end
    scenario 'with a "Scissors" button' do
      add_name_and_play
      expect(page).to have_button("Scissors")
    end
  end
end
