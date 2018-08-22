feature 'It takes the names of two players' do
  scenario 'players enter their names' do
    play_for_2
    expect(page).to have_content('A vs B')
  end
end