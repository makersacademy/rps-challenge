describe 'Rock, Paper, Scissors' do
  feature 'Choosing an option' do
    scenario 'Player chooses Rock' do
      sign_in_and_play
      expect(page).to have_content 'Rob chooses Rock'
    end
  end
end
