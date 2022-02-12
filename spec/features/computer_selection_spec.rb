feature 'Computer picks a move' do
    before do
        visit ('/')
        fill_in :player1, with: 'Larry'
        click_button 'Submit'
      end
    
      scenario 'Computer chooses Rock and player chooses Paper' do
        click_button 'Paper'
        
      end 

end