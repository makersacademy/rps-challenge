describe 'Rock, Paper, Scissors' do
  feature 'Viewing the winner' do
    before(:each) { sign_in_and_play }
    scenario 'a winner is declared' do
      sign_in_and_play
      click_button "Game on!"
      expect(page).to satisfy {|page| page.has_content?('wins') || page.has_content?('draw')}
    end
  end
end
