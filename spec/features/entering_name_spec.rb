feature "enter name" do
    scenario "1 player can enter his/her name and see it displayed" do
        visit('/')
        fill_in('player', with: "Wednesday")
        click_button('Play')
        expect(page).to have_content("Wednesday vs Thing")
    end
end