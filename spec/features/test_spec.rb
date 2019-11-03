
feature'get names' do 
    scenario "submit names when entered names" do
    visit('/')
        fill_in :player_1, with: 'Shubs'
        fill_in :player_2, with: 'Kenny'
        click_button 'Submit'
    expect(page).to have_content 'Shubs'
    end 
end

feature 'Enter choice' do
    scenario 'Submit the choice' do 
    visit('/')
    expect(page).to have_content 'Shubs has chosen '
    end 
end  

feature 'Player 1 Chose RPS' do 
    scenario 'Submit the choice of Player 1' do
        visit('/')
        fill_in :player_1, with: 'Shubs'
        expect(page).to have_content 'Shubs chose Rock'
    end 
end 

 