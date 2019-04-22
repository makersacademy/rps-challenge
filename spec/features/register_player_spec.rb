feature 'See my name' do
  scenario 'register name before playing' do
    enter_name_and_submit
    expect(page).to have_content('Rick')
  end
end
