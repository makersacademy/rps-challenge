feature 'Enter Name' do
  scenario 'Player 1 enters name' do
    enter_name
    expect(page).to have_content 'Anna'
  end
end
