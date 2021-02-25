
# As a marketeer
# So that I can play a game
# I would like to be able to see what moves i can make


feature 'making a move' do
    let(:player_move) { double(:player_move) }
    scenario 'Seeing available moves' do
      sign_in_and_play
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end

    scenario 'choosing a move' do
        sign_in_and_play
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock'
      end
end



