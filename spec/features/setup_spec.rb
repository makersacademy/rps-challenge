feature 'prints heloo human to the homepage' do
  scenario 'user goes to homepage' do
    visit '/'
    expect(page).to have_content "hello human"
  end
end