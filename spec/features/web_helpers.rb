def sign_in_and_play
   visit '/'
   within(:css, '#player_name_form') do
     fill_in :player, with: 'Gabby'
     
     click_button 'Play!'
   end
 end
