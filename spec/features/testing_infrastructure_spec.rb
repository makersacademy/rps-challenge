

feature 'Infrastructure is working!' do
  scenario 'Can run and look at the page content' do
    visit('/')
    expect(page).to have_content 'Infrastructure working!'
  end
end