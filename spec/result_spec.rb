
describe 'result.erb' do
  
  before do
    sign_in_and_play
  end
  
  feature 'shows the winner' do
    scenario 'shows player 1 win' do
      expect(page).to have_content "Player 1 wins"
    end
  end
  
end
