require 'spec_helper'
require_relative 'web_helper'

feature 'Result' do

  before(:each) do
    sign_in
  end

    context "Click Buttons"do

      scenario 'test to see users selection of Rock' do
        click_button("Rock")
        expect(page).to have_content "Courtney chose Rock"
      end

    scenario 'test to see users selection of Scissors' do
      click_button("Scissors")
      expect(page).to have_content "Courtney chose Scissors"
    end

    scenario 'test to see users selection of Paper' do
      click_button("Paper")
      expect(page).to have_content "Courtney chose Paper"
    end
  end

  context "Computer selection" do

    scenario 'shows result of computer selection' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      click_button("Scissors")
      expect(page).to have_content "Computer chose Rock"
    end
  end

  context "Result status" do

    scenario 'test that draw is returned' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      click_button("Rock")
      expect(page).to have_content "Draw"
    end

    scenario 'test that user wins' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
      click_button("Scissors")
      expect(page).to have_content "Win!"
    end

    scenario 'test that user loses' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      click_button("Paper")
      expect(page).to have_content "Lose"
    end
  end

  context "Change page" do

    scenario 'test play again button returns to game' do
      click_button("Scissors")
      click_button("Play Again")
      expect(page).to have_content "Welcome Courtney"
    end
  
    scenario 'test that player can change' do
      click_button("Paper")
      click_button("New Player")
      expect(page).to have_content "Player's Name"
    end
  end

end
