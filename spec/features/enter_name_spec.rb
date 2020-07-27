feature 'starting with RPS' do
  scenario 'player enter the name' do
    type_name_click
    expect(page).to have_content("Jack make your choice!")
  end
end
