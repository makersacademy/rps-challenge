feature 'Enter name' do
  scenario 'Can submit name' do
    fill_form
    expect(page).to have_content 'Player: Mel'
  end

  scenario 'Can enter two players names' do
    visit('/')
    click_button 'Two players'
    fill_in :player_1, with: 'Mel'
    fill_in :player_2, with: 'Aimee'
    click_button 'Submit'
    expect(page).to have_content 'Mel vs. Aimee'
  end
end
