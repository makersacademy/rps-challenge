feature 'name entering form' do
  scenario 'player can enter name in form before the game' do
    sign_in
    expect(page).to have_content 'Gina VS. Computer'
  end
end