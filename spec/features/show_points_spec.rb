feature 'Displays points' do
  scenario 'before game starts' do
    sign_in_and_play
    expect(page).to have_content("0 - Bot vs. Pikachu - 0")
  end
end
