feature 'Testing infrastructure' do
    scenario 'page returns text in a view' do
        expect(page).to have_content 'This is a page'
    end
end