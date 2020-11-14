feature 'can fill in name' do
  scenario "there's a field to fill in your name" do
    visit '/'
    expect(page).to have_content "Oooh I bet your name would look good in here!"
  end

  scenario "It stores your name, and says hi" do
    sign_in
    expect(page).to have_content "Well hey there Sheldon!"
  end
end
