feature 'can enter a name' do
  it 'allows user to enter a name on the welcome page' do
    visit '/'
    expect(page).to have_field "name"
  end
  # it 'allows user to choose to play the computer' do
  #   visit '/'
  #   expect(page).to have_css('input[type="checkbox"]')
  # end
end
feature 'name will be shown' do
  scenario 'name has been entered' do
    enter_name_and_click
    expect(page).to have_content "Name: Bob"
  end
  scenario 'two names entered' do
    enter_two_names_and_click
    expect(page).to have_content "Name: Bob"
  end
end
