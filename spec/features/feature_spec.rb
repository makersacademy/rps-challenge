require 'spec_helper'
require 'web_helpers'


feature 'US1 - Player can register their name' do
  scenario 'Allows player to input name' do
    expect(sign_in_and_play_vs_CPU)
  end
end

feature 'US2 - Player can play a Cpu of Rock, Paper' do
  feature 'Player picks Rock' do
    before do
      sign_in_and_play_vs_CPU
      choose 'Rock'
    end

    scenario 'CPU picks Rock' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Rock")
      click_button 'Select'
      expect(page).to have_content 'The result is a Draw. You both picked Rock.'
    end

    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Scissors")
      click_button 'Select'
      expect(page).to have_content 'a win for Bob! Rock beats Scissors.'      
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Paper")
      click_button 'Select'
      expect(page).to have_content 'a win for CPU! Paper beats Rock.'     
    end
  end

  context 'Player picks Paper' do
    before do
      sign_in_and_play_vs_CPU
      choose 'Paper'
    end

    scenario 'CPU picks Rock' do  
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Rock")
      click_button 'Select'
      expect(page).to have_content 'a win for Bob! Paper beats Rock.'         
    end
    
    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Scissors")
      click_button 'Select'
      expect(page).to have_content 'a win for CPU! Scissors beats Paper.'    
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Paper")
      click_button 'Select'
      expect(page).to have_content 'The result is a Draw. You both picked Paper.'    
    end
  end

  context 'Player picks Scissors' do
    before do
      sign_in_and_play_vs_CPU
      choose 'Scissors'
    end

    scenario 'CPU picks Rock' do  
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Rock")
      click_button 'Select'
      expect(page).to have_content 'a win for CPU! Rock beats Scissors.'    
    end
    
    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Scissors")
      click_button 'Select'
      expect(page).to have_content 'The result is a Draw. You both picked Scissors.'   
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Paper")
      click_button 'Select'
      expect(page).to have_content 'a win for Bob! Scissors beats Paper.'  
    end
  end

  context 'Allows you to play again' do
    scenario 'resets the Cpu' do
      allow_any_instance_of(Cpu).to receive(:choice).and_return("Paper")
      sign_in_and_play_vs_CPU
      choose 'Scissors'
      click_button 'Select'
      click_link "Play Again?"
      sign_in_and_play_vs_CPU
      choose 'Rock'
      click_button 'Select'
      expect(page).to have_content 'a win for CPU! Paper beats Rock.'
    end
  end

  feature 'Allows for 2 players to play' do
    scenario 'Runs through a multiplayer session' do
      visit '/'
      choose 'Human vs. Human'
      click_button 'Submit'
      fill_in 'Player_1_Name', with: 'Bob'
      fill_in 'Player_2_Name', with: 'John'
      click_button 'Submit'
      click_link "Let's Play!"
      choose 'Rock'
      click_button 'Select'
      choose 'Scissors'
      click_button 'Select'
      expect(page).to have_content 'a win for Bob! Rock beats Scissors.'
    end
  end
end    
