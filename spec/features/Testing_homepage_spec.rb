feature 'Testing Homepage' do
  scenario 'Homepage should have content' do
    visit('/')
    expect(page).to have_content "Hello Players!"
  end
end
