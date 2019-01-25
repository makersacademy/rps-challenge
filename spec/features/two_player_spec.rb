feature 'two_player' do
  scenario 'names entered' do
    enter_two_names
    expect(page).to have_content "It's Mel's turn - make your choice (Sue no looking!)"
  end
end
