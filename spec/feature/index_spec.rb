feature 'Form players start' do
  scenario 'player fills in name on form sees name on screen' do
    sign_in_and_play
    expect(page).to have_content "Player vs Computer"
  end
end
