
feature 'A player can start a game' do
  scenario 'A player can enter their name to start a game' do
    start_game
    expect(page).to have_content("Lewis vs. SuperAI!")
  end
end

feature 'Choosing a move' do
  scenario 'Player can select a move that is then displayed' do
    start_game
    select('Rock', :from => 'move')
    click_button('Submit')
    expect(page).to have_content "You chose: Rock"
  end
end
