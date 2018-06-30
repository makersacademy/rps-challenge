feature 'Computer chooses move' do
  scenario 'Computer move is displayed after player move' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Computer chooses Rock!'
  end
end
