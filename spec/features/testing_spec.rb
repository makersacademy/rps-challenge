feature 'Testing setup' do
  scenario "can run app and check page content" do
    visit '/'
    expect(page).to have_content 'This is a RPS game -- update'
  end
end
