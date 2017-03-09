feature 'A user can input their name' do
  scenario 'and expects to be welcomed' do
    visit('/')
    enter_name_and_submit
    expect(page).to have_content "Welcome Jamie"
  end
end
