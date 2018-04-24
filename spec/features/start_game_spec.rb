feature 'start game' do
  scenario 'after click start game link' do
    sign_in_and_play
    click_link 'Start Game'
    expect(page).to have_content "Timmy's turn"
  end
end
