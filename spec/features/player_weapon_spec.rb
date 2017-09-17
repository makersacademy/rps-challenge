feature 'weapon' do
  scenario 'player can choose their weapon' do
    choose_rock
    expect(page).to have_content "Benjamin, you chose the weapon Rock"
  end
end
