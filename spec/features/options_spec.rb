feature 'View RPS' do 
    scenario 'see Rock, Paper, Scissors' do
        sign_in_and_play
        click_button('rock')
        click_button('paper')
        click_button('scissors')
        expect(page).to have_content "Court"
    end
end

