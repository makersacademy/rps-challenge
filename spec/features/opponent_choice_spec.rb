feature 'rps game' do
  scenario 'select one or two players' do
    visit('/')
    expect(page).to have_content 'Welcome to rock, paper, scissors!'
  end
end
