feature 'registering name' do 
    scenario 'registering my name' do 
    visit ('/')
        fill_in :player_name, with: 'Meg'
        click_button 'submit'
        expect(page).to have_content 'Meg'
    end
end 