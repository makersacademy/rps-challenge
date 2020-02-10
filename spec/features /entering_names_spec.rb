feature "Entering Names" do 
    scenario 'enter both names' do
        visit('/')
        fill_in :player_1_name, with: 'Dave'
        fill_in :player_2_name, with: 'Mittens'
        click_button "Submit"
        expect(page).to have_content 'Welcome to the Arena brave Warriors'
    end 
end