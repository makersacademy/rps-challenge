feature 'entering challenger name' do
  scenario 'gets confirmation of challenger name' do
    enter_name
    expect(page).to have_text("It's time to du-du-du-du-dueellllllll")
    expect(page).to have_text("CATHAL VERSUS PSYDUCK")
  end
end
