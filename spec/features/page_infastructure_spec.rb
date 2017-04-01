feature 'page_infrastructure' do
  scenario 'lands on the splash page on start up' do
    visit '/'
    expect(page).to have_content "Rock, Paper, Scissors"
    #expect(page.has_xpath?('/').to eq(true)
  end
end
