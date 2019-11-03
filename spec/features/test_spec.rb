feature 'get names' do 
    scenario "submit names when entered names"
    visit('/')
        fill_in :player_1, with: 'Shubs'
        fill_in :player_2, with: 'Kenny'
        click_button 'Submit'
    expect(page).to have_content 'Shubs'
    end 


feature 'Enter choice' do
    scenario 'Submit the choice' do 
    visit('/')
    expect(page).to have_content 'Shubs has chosen '
    end 
end  


# feature 'choice'
# scenario "choice to equal"
# visit('/')
# end 