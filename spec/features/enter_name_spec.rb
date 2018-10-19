feature 'Enter name' do
  scenario "Dave Submitted as username" do
    sign_in
    expect(page).to have_content 'Dave'
  end
end
