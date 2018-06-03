feature 'Change player' do
  scenario 'Changes player 1 to player 2' do
    enter_names_and_submit
    expect(page).to have_content "John Doe's turn"
    click_rock
    find('#ok').click
    expect(page).to have_content "Jane Doe's turn"
  end
end
