require 'Capybara'
feature "Entering Moves" do 
    scenario 'enter player 1 move' do
        visit('/')
        fill_in :player_1_name, with: 'Dave'
        fill_in :player_2_name, with: 'Mittens'
        click_button "Submit"
        click_button 'Rock'
        expect(page).to have_content('Mittens pick your move')
    end 
    scenario 'enter player 2 move' do
        visit('/')
        fill_in :player_1_name, with: 'Dave'
        fill_in :player_2_name, with: 'Mittens'
        click_button "Submit"
        click_button 'Rock'
        click_button 'Paper'
        expect(page).to have_content('Congratulations Mittens wins')
    end 
end