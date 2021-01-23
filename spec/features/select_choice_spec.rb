feature 'Be able to see list of options'do
scenario 'Be able to see rock' do
    visit '/'
        fill_in :player_1_name, with: "Alex"
        click_button 'Submit'
        expect(page).to have_content "Rock"
    end
scenario 'Be able to see paper' do
    visit '/'
        fill_in :player_1_name, with: "Alex"
        click_button 'Submit'
        expect(page).to have_content "Paper"
    end
scenario 'Be able to see scissors' do
    visit '/'
        fill_in :player_1_name, with: "Alex"
        click_button 'Submit'
        expect(page).to have_content "Scissors"
    end
end