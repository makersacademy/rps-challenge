require_relative '../../app.rb'

feature RPS do

  let(:player) { 'Tina' }

  feature 'To set-up the game' do
    scenario 'Should allow players to input their name' do
      visit "/"
      fill_in :name, with: player
      click_button('Enter Game')
      expect(page).to have_content "#{player} Vs Robotion"
    end
  end

  feature 'Choosing your move' do
    scenario 'Should see a links to rock, paper and scissors' do
      set_up
      expect(page)
    end
  end

  feature 'If chosen rock' do
    scenario 'Show players choice' do
      select_rock
      expect(page).to have_content "You selected ROCK"
    end

    scenario 'Show robots choice' do
      select_rock
      expect(page).to have_content
    end

  end

end
