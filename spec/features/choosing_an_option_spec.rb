describe 'Rock, Paper, Scissors' do
  feature 'Choosing an option' do
    # before(:each) { sign_in_and_play }
    scenario 'Player chooses Rock' do
      sign_in_and_play
      expect(page).to have_content 'Dwayne Johnson chooses Rock'
    end
    # scenario 'Player chooses Paper' do
    #   choose 'paper'
    #   click_button 'Play!'
    #   expect(page).to have_content 'Dwayne Johnson chooses Paper'
    # end
    # scenario 'Player chooses Scissors' do
    #   choose 'scissors'
    #   click_button 'Play!'
    #   expect(page).to have_content 'Dwayne Johnson chooses Scissors'
    # end
  end
end
