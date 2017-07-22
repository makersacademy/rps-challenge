feature 'make a move' do
  scenario 'player can choose a move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Fred played Rock'
  end
end
