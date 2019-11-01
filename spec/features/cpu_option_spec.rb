feature 'Cpu option' do
    scenario 'randomly selects option for CPU' do
        visit('/')
        fill_in :player_1, with: 'Khan'
        fill_in :player_option, with: 'rock'
        click_button 'Submit'
        click_button 'rock'
        expect(page).to have_content 'rock vs paper'
    end
end