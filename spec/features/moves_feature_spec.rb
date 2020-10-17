feature 'user chooses a move' do
  scenario 'user picks rock' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Rock")
  end
end

feature 'user chooses a move' do
  scenario 'user picks paper' do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("Paper")
  end
end

feature 'user chooses a move' do
  scenario 'user picks scissors' do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("Scissors")
  end
end