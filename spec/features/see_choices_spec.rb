feature 'Be able to see list of options'do
scenario 'Be able to see rock' do
    visit '/'
       sign_in_and_play
        expect(page).to have_button "Rock"
    end
scenario 'Be able to see paper' do
    visit '/'
       sign_in_and_play
        expect(page).to have_button "Paper"
    end
scenario 'Be able to see scissors' do
    visit '/'
       sign_in_and_play
        expect(page).to have_button "Scissors"
    end
end