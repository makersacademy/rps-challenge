require 'capybara/rspec'

describe RockPaperScissor do
  describe 'Homepage', :type => :feature do
    it "should say let's play" do
      visit '/'
      expect(page).to have_content "Relax Play a game of rock, paper, scissors!"
    end
  end

  describe '/play', :type => :feature do
    it 'should say Hello Marie' do
      signing_in
      expect(page).to have_content "Hello Marie"
    end
    it 'should have a button rock' do
      signing_in
      expect(page).to have_button "Rock!"
    end
    it 'should have a button rock' do
      signing_in
      expect(page).to have_button "Paper!"
    end
    it 'should have a button rock' do
      signing_in
      expect(page).to have_button "Scissors!"
    end
    it 'should say Your choice: rock if button rock is pressed' do
      signing_in
      click_button 'Rock!'
      expect(page).to have_content "Your choice : rock"
    end
    it 'should say Your choice: scissors if button scissors is pressed' do
      signing_in
      click_button 'Scissors!'
      expect(page).to have_content "Your choice : scissors"
    end
    it 'should say Your choice: rpaper if button paper is pressed' do
      signing_in
      click_button 'Paper!'
      expect(page).to have_content "Your choice : paper"
    end
    it 'should show the score' do
      signing_in
      click_button 'Paper!'
      click_button 'Play again!'
      expect(page).to have_content "Your score : "
    end
  end
  describe '/turn', :type => :feature do
    it 'should be possible to go back to the play page' do
      signing_in
      click_button 'Paper!'
      expect(page).to have_button "Play again!"
    end
  end
end
