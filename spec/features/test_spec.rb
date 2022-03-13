feature 'testing spec' do 
  scenario 'does it have the right text when visiting' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end
