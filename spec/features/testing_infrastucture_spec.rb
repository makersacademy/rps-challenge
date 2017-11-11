feature 'Enter names' do
  scenario 'Solo player can enter their name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content('Robert VS CPU')
  end

  scenario 'Multiple players can enter their names and see them on the screen' do
    multi_in_and_play
    expect(page).to have_content('Robert VS Evelina')
  end
end
