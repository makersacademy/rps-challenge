feature 'weapon' do
  scenario 'player can choose their weapon' do
    sign_in_and_play
    expect(page).to have_content "Benjamin, you chose the weapon Rock"
  end
end
