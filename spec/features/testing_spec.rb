feature 'Homepage' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'ROCK. PAPER. SCISSORS.'
  end
  scenario 'Testing' do
    visit('/test')
    expect(page).to have_content 'Hello!'
  end
end

