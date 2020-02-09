feature 'Computer move' do
  scenario 'shows computer counter-move' do
    start_playing
    choose_rock
    expect(page).to have_content "Computer chooses "
  end
end