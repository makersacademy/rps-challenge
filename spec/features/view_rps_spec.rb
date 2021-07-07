feature 'viewing rock paper scissors' do
    scenario 'visit the index page' do
        visit ('/')
        expect(page).to have_content("Welcome to Rock Paper Scissors!")
    end
end