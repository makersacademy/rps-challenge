feature 'index page' do
  before do
    visit('/')
  end

  scenario 'title' do
    expect(page).to have_text('Rock Paper Scissors')
  end

  scenario 'play button' do
    expect(page).to have_link('Play', href: '/name')
  end
end
