feature 'enter player name' do
    scenario 'enter player name' do
        visit('/')
        fill_in('player1', with: 'Boris')
        click_button "Let's Play!"
        expect(page).to have_content 'Welcome to your game Boris'
    end
end