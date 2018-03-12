require 'spec_helper.rb'

feature 'Play Rock Paper Scissors' do
  scenario 'player can pick rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  describe "returning the player's weapon of choice" do

    it 'returns whether player picked rock as their weapon' do
      sign_in_and_play
      click_button 'rock'
      expect(page).to have_content 'Cleopatra, you picked rock!'
    end

    it 'returns whether player picked paper as their weapon' do
      sign_in_and_play
      click_button 'paper'
      expect(page).to have_content 'Cleopatra, you picked paper!'
    end

    it 'returns whether player picked scissors as their weapon' do
      sign_in_and_play
      click_button 'scissors'
      expect(page).to have_content 'Cleopatra, you picked scissors!'
    end
  end
end
