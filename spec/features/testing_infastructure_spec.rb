
feature 'Testing infastructure' do
    
    scenario 'Testing page shows message: Testing infrastructure working!' do
        visit('/test')
        expect(page).to have_content("Testing infrastructure working!")
    end
end

