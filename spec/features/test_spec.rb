feature 'test infrastructre' do
  scenario 'shows sth on web page' do
    visit ('/')
    expect(page).to have_content "It's working :D"
  end
end