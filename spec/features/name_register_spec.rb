feature "Homepage" do
    
    scenario "Enter player name" do
        visit "/"
        expect(page).to have_content("Enter your name")
        expect(page).to have_content("Your Name")
        expect(page).to have_field("Name")
        expect(page).to have_button("Submit")
    end

end