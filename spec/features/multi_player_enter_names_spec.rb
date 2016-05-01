feature 'enter names of two players' do
  scenario 'two names were entered' do
    multi_player_with_names
    expect(page).to have_content 'Emma'
    expect(page).to have_content 'Ingrid'
  end
end
