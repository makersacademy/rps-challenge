feature 'Select weapon' do 
    scenario 'user can select a object from list' do 
        visit('/')
            fill_in :player_1_name, with: 'Dave'
            click_button 'Play'
            select("Rock", from: "choice").select_option
    end 
end 


