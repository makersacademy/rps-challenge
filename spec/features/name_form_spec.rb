feature 'homepage should have a form that asks for the visitors name' do
    scenario 'when submitted, it should direct you to /play' do
        visit('/')
        fill_in(:player_name, with: "Cam")
        click_button("Submit")
        expect(page).to have_content("Cam, pick rock paper or scissors")
    end
end
