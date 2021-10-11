feature 'Choosing a move' do
  feature 'normal game' do
    before do
      start_normal_game
      click_button 'rock'
    end
    scenario 'player clicks a move and it is displayed' do
      expect(page).to have_content 'Your move: rock'
    end
    
    scenario "computer's move is displayed" do
      expect(page).to have_content(/^.*Computer's move: (rock|paper|scissors).*$/)
    end
  end
  
  feature 'lizard spock game' do
    scenario "computer's move is displayed" do
      start_lizard_spock_game
      click_button 'lizard'
      expect(page).to have_content(/^.*Computer's move: (rock|paper|scissors|lizard|spock).*$/)
    end
  end
end
