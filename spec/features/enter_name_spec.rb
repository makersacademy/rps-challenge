feature 'Player enters their name' do
  scenario 'Submitting a name' do
    type_name_and_play
    expect(page).to have_content 'David vs The Great Cthulhu'
  end
end
