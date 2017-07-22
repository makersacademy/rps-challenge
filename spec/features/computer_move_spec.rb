feature 'computer outputs a random move' do
  scenario 'computer outputs a move' do
    allow(Computer::MOVES).to receive(:sample).and_return('Scissors')
      sign_in_and_play
      fill_in :player_move, with: 'Rock'
      click_button 'Play'
      expect(page).to have_content 'Computer played Scissors'
    end
  end
