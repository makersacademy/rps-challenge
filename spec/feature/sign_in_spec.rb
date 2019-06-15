feature 'User can sign in.' do 
    scenario "Users name is stored in session" do
        visit '/'
        fill_in :player_name, with: "Remzilla"
        click_button('Submit')
        expect(page).to have_content("Remzilla")
    end
end