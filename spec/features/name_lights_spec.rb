feature 'Enter and display Player name' do
  scenario 'The player enters their name and submits form' do
    visit '/'
    within(:css, '#player_name_form') do
       fill_in :player, with: 'Gabby'
       click_button 'Play!'
     end
     expect(page).to have_content 'Gabby vs. computer'
   end
 end
