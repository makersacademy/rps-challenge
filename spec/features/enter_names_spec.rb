feature 'Enter names' do
    scenario 'submitting names' do 
        sign_in_and_play
        expect(page).to have_content 'Court vs. COMPUTER'
    end
end