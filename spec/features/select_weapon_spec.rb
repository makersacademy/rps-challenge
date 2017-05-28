
feature 'Select a weapon' do
  scenario 'player can view available weapons' do
    sign_in_and_play
    expect(page).to have_button "Rock"
  end
end
