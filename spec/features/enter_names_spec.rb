feature 'Entering the name' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content 'Hello Harry!'
  end
end
