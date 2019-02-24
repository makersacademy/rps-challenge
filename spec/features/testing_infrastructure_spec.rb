feature 'test home page is working' do
  scenario 'home page shows text' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end

feature 'Enter name' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content 'Hi, Lizzie'
  end
end
