feature 'Enter name' do
    scenario 'player enters name before game starts' do
        visit('/')
        fill_in :player, with: 'Zish'
        click_button "Submit"
        expect(page).to have_content "Welcome Zish, please select rock, paper or scissors:"
    end
end