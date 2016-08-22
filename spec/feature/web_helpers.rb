 def sign_in_and_play 
   visit '/'
   fill_in :name, with: "Abdulla"
   click_button 'Submit'
   expect(page).to have_content 'Abdulla'
  end