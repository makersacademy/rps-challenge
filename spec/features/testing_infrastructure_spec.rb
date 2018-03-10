feature 'Infrastructure' do
  scenario 'Can run app and page displays some content' do
    expect(page).to have_content '.'
  end
end
