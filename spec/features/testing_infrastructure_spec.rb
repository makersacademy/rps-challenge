feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit ('/')
    (page).has_content? 'Sign in to play'
  end
end
