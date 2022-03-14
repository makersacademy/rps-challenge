feature "display name" do
    scenario "with correct name" do
        register_and_play
        expect(page).to have_content("Welcome Jasmine, please pick your choice!")
    end
end