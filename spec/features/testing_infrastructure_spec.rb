feature 'Allow user interaction with website' do

    scenario 'Player 1 enters their name to play' do
    visit('/')
    fill_in 'player1', with: 'Apps'
    click_on 'Submit'
    expect(page).to have_content("Welcome Apps, you are Player 1")
    end
end