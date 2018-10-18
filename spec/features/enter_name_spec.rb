feature 'Name' do
  scenario 'enters a name and returns a welcome message' do
    input_name
    expect(page).to have_content 'Welcome Gizmo, select a move!'
  end
end
