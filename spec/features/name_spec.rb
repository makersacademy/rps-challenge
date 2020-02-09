feature 'accept name' do

    scenario 'greetings' do
        visit('/')
        expect(page).to have_content("Dare to challenge the computer?")
    end
    
    scenario 'name is present' do  
        visit('/')
        fill_in :player1, with: "Toby"
        click_button 'submit'
        expect(page).to have_content("Toby")
    end
end