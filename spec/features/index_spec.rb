RSpec.feature "Enter Name", :type => :feature do
  scenario "User enters name" do
    sign_in

    expect(page).to have_text("Chris")
  end
end
