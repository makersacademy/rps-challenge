feature 'Player chooses shape' do
  scenario 'Chooses Rock' do
    start_game
    click_button('Rock')
    expect(page).to have_content("Rebecca chooses Rock")
  end
end