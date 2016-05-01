feature 'enter names of two players' do
  scenario 'first name was entered' do
    multi_player_with_names
    expect(page).to have_content 'Emma'
  end
  scenario 'second name was entered' do
    multi_player_with_names
    expect(page).to have_content 'Ingrid'
  end
end
