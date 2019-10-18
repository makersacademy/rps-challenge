feature 'Testing Outputs' do 
    scenario 'Checking each button outputs the correct move - Rock' do 
        log_in
        click_button 'rock'
        expect(page).to have_content 'Player move was: rock'
    end
    scenario 'Checking each button outputs the correct move - Paper' do 
        log_in
        click_button 'paper'
        expect(page).to have_content 'Player move was: paper'
    end
    scenario 'Checking each button outputs the correct move - Scissors' do 
        log_in
        click_button 'scissors'
        expect(page).to have_content 'Player move was: scissors'
    end
end