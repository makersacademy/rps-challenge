feature 'testing infrastructure' do

  scenario 'user is asked to enter name' do
    visit('/')
    expect(page).to have_content("Please enter name")
  end

end
