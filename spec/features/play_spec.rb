require 'spec_helper'

feature 'playing a game' do
  before do
    visit('/')
    fill_in :player_name, with: "Felix"
    click_button "Submit"
  end
    scenario 'see the options rock, paper and scissors' do
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end

    scenario 'choose a shape to play' do
      click_button 'Rock'
      expect(page).to have_content "You chose Rock!"
    end

    scenario "opponent chooses an option" do
      click_button 'Rock'
      
      message = find(:css, '#opponent').text.strip
      expect(possible_messages).to include message
    end

    scenario "opponent chooses a random option" do
      srand(221563)
      click_button 'Rock'
      expect(page).to have_content "Opponent chose Scissors!"
    end

    scenario "I win" do
      click_button 'Rock'
      expect(page).to have_content
    end

    def possible_messages
      [:rock, :paper, :scissors].map {|shape| "Opponent chose #{shape.to_s.capitalize}!"}
    end
end