feature 'Enter name' do
        scenario 'Can page run app and see button?' do
            visit ('/')
            expect(page).to have_selector(:link_or_button, "let's begin")
        end

end