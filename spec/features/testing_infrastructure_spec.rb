require_relative 'web_helpers'

feature 'Allow user interaction with website' do

    before(:each) do register_name
    end
    
    scenario 'Player 1 enters their name to play' do
    expect(page).to have_content("Welcome Apps, you are Player 1")
    end

    scenario 'Player 1 has entered their name and wants to play' do
        click_on 'Rock'
        expect(page).to have_current_path(/game_result/)
    end
end