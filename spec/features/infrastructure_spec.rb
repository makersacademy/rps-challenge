feature 'Test' do
    scenario 'testing infrastructure' do
        visit('/')
        expect(page).to have_content "Hello"
    end
end