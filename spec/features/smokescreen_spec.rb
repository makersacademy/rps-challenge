feature 'visiting the homepage' do
  scenario 'Creating the home page route' do
    visit '/'
    expect(page).to have_content "The beginning of Rock, Papers and Scissors"
  end
end