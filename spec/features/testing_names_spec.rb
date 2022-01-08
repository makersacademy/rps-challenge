
feature 'Submitting first players name' do

    scenario 'To be able to enter first players name' do
        #arrange
        visit('/')
        fill_in :player_1, with: 'Ellz'
        click_on 'Submit'
        #asser
        expect(page).to have_content('Ellz')
    end
end