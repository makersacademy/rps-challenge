feature 'after entering name' do
    scenario 'submitting player 1 name' do
        visit('/')
        fill_in :player_name, with: 'Julia'
        click_button "let's begin"
        expect(page).to have_content "Julia it's is your turn!" 
    end
end