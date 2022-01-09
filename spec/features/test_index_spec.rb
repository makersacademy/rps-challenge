feature 'test webpage' do
    scenario 'is loading' do
        visit '/'
        expect(page).to have_content('Hello world')
    end
end
