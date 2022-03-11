feature 'Enter player name' do
  scenario 'entering player name and seeing it returned' do
    sign_in
    expect(page).to have_content 'Hello Jonny'
  end
end