feature 'Players choose between Rock, Paper or Scissors' do
   scenario 'Player chooses first move' do
     sign_in_and_play

     within(:css, '#options') do
       click_link 'Rock'
     end

     # expect(page).to have_content 'Gabby attacked computer with rock'
   end
 end
