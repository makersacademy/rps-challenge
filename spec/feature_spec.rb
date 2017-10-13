feature 'homepage' do
  scenario 'player visits homepage' do
    visit('/')
    expect(page).to have_content "Please enter your name:"
  end
end
