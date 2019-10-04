feature 'Enter player name' do
  scenario 'player can enter a name, name is displayed' do
    sign_in_and_play
    expect(page).to have_content 'Adam'
  end
end
