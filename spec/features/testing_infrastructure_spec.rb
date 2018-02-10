feature 'testing infracture set up correctly' do
  scenario 'check testing infrastructure' do
    visit '/'
    expect(page).to have_content("Testing Infrastructure Working!")
  end
end
