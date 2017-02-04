require 'spec_helper'
require_relative 'web_helper'

feature 'Result' do

  before(:each) do
    sign_in
  end

    context "Player_1 Click Buttons"do

      scenario 'test to see users selection of Rock' do
        click_button(:Rock)
        expect(page).to have_content "Russell, please choose rock, paper or scissors"
      end

    scenario 'test to see users selection of Scissors' do
      click_button(:Scissors)
      expect(page).to have_content "Russell, please choose rock, paper or scissors"
    end

    scenario 'test to see users selection of Paper' do
      click_button(:Paper)
      expect(page).to have_content "Russell, please choose rock, paper or scissors"
    end
  end

  context "Player_2 Click Buttons"do

    scenario 'test to see users selection of Rock' do
      click_button(:Scissors)
      click_button(:Rock)
      expect(page).to have_content "Courtney chose: Scissors Russell chose: Rock"
    end
  end

  context "Result status" do

    scenario 'test that draw is returned' do
      click_button(:Rock)
      click_button(:Rock)
      expect(page).to have_content "It is a draw"
    end

    scenario 'test that user wins' do
      click_button(:Rock)
      click_button(:Scissors)
      expect(page).to have_content "Courtney"
    end

    scenario 'test that user loses' do
      click_button(:Paper)
      click_button(:Scissors)
      expect(page).to have_content "Russell"
    end
  end

  context "Change page" do

    before(:each) do
      click_button(:Paper)
      click_button(:Scissors)
    end

    scenario 'test play again button returns to game' do
      click_button("Play Again")
      expect(page).to have_content "Welcome Courtney"
    end

    scenario 'test that player can change' do
      click_button("New Player")
      expect(page).to have_content "First player's Name"
    end
  end

end
