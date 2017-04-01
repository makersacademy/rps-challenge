feature 'Home page' do
  scenario 'There is a submit button' do
    visit('/')
    page.has_content?('PLAY')
  end
end
