
feature 'First test' do
  scenario "should execute first test" do
    visit '/'
   expect(page).to have_content "Please Enter Your Name"
  end
  end