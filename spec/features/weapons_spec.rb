feature 'Select weapon' do 
    scenario 'user can select a object from list' do 
        visit('/')
            fill_in :player_1_name, with: 'Dave'
            click_button 'Play'
           click_on ('weapons form')
           
            select "rock", :from => "weapons_form"

    end 
end 




# feature 'Enter names' do
#     scenario 'submitting names' do
#       visit('/')
#       fill_in :player_1_name, with: 'Dave'
#       click_button 'Play'
#       expect(page).to have_content 'Welcome Dave'
#     end
#   end