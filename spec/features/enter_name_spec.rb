feature 'Player enters name' do
  scenario 'When a player enters their name it is displayed back' do
    fill_in_name_and_submit

    expect(page).to have_content "Hello, Sam"
  end
end
