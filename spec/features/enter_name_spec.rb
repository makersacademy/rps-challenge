feature 'enter player name' do
  scenario 'player submits name' do
    sign_in_and_play
    expect(page).to have_content 'Kanye'
  end
end
