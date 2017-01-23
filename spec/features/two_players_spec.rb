describe 'Rock, Paper, Scissors' do
  feature 'Playing a two player game' do
    before(:each) { sign_in_and_play }
    scenario 'a winner is declared' do
      sign_in_and_play_two_player
      click_button "Game on!"
      expect(page).to satisfy {|page| page.has_content?('wins') or page.has_content?('draw')}
    end
  end
end
