feature 'Index page loads' do
  scenario 'with greeting' do
    visit '/'
    expect(page).to have_content "Hello there!"
  end

  scenario 'with option to add player name' do
    visit '/'
    expect(page).to have_field :name
  end
end