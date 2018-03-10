feature 'Infrastructure' do
  scenario 'Can run app and page displays some content' do
    visit('/')
    within('div.jumbotron') do
      expect(page).to have_content 'Rock Paper Sciccors :: Online!'
    end
  end
end
