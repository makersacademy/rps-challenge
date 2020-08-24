 
 feature 'form test' do
    scenario 'see player name on screen' do
      enter_name_and_play
      expect(page).to have_content('JS vs CPU')
    end
end