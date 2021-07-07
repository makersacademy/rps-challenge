feature 'Enter name' do
  scenario 'Can submit name' do
    fill_form
    expect(page).to have_content 'Player: Mel'
  end

  scenario 'Can enter two players names' do
    fill_form_2_players
    expect(page).to have_content 'Mel vs. Aimee'
  end
end
