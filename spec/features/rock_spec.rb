feature 'Choice' do
  scenario 'Player wins against computer' do
   sign_in
   click_button 'Rock'
   expect(page).to have_content 'Congrats! You were lucky this time'
   end
  end
