feature 'names' do
  scenario 'displays names' do
    enter_names
    expect(page).to have_content 'Jack'
    expect(page).to have_content 'Jill'
  end
end
