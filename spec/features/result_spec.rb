feature 'results page' do
    scenario 'has a result' do
        click_and_submit
        click_button('Rock')
        expect(page).to have_content "You chose Rock!"
    end
end