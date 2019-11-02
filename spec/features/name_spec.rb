feature 'entering a name' do
  scenario 'can enter their name and see it displayed' do
    sign_in_and_go
    expect(page).to have_content 'Welcome Dave!'
  end
end
