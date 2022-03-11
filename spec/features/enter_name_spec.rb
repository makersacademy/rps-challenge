feature 'Enter name' do
  scenario 'entering player name' do
    sign_in
    expect(page).to have_content 'Hello Jonny'
  end
end
