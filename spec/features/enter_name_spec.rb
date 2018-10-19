feature 'Enter name' do
  scenario 'Can submit name' do
    fill_form
    expect(page).to have_content 'Player: Mel'
  end
end
