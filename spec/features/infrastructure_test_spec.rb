feature 'Testing infrastructure' do
  scenario 'checks what homepage says' do
    visit('/')
    expect(page).to have_content "Rock, paper, scissors!"
  end
end

feature 'Players names' do
  scenario 'expects player to fill in their names then see it' do
    sign_in_play
    expect(page).to have_content "Hello, Spock!"
  end
end

feature 'Player can play Rock/Paper/Scissors' do
  scenario 'asks if the player want to play again' do
    sign_in_play
    click_button('Rock')
    expect(page).to have_content "Want to play again?"
  end
end
