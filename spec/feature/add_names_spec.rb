feature 'register name to play' do
  scenario 'submit player name' do
    sign_in_and_play
    expect(page).to have_content 'Maggie vs Krusty'
  end
end
