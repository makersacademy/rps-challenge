feature 'weapon choice' do
  scenario 'players choose rock as a weapon' do
    sign_in_and_play
    expect(page).to have_content ('Kanye chose to use a Rock')
  end
end
