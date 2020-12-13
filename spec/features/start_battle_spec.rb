feature 'start the battle' do
  scenario 'allows you to make your move' do
    start_battle
    expect(page).to have_text("YOUR MOVE CATHAL")
  end
end
