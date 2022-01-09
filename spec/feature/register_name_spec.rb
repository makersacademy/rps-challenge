feature 'Enter Name' do
    scenario 'submitting names' do
        visit ('/')
        fill_in :player_1_name, with: 'JimBob'
        click_button 'Submit'

        save_and_open_page 

        expect(page).to have_content 'Welcome JimBob'
    end 
  
    #The JimBob name test won't pass as we've updated our page to show whatever name is entered.

end 
