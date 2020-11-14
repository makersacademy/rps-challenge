feature 'can fill in name' do
  scenario "there's a field to fill in your name" do
    visit '/'
    click_link "I'm alone"
    expect(page).to have_content "Oooh I bet your name would look good in here!"
  end

  scenario "It stores your name, and says hi" do
    sign_in
    expect(page).to have_content "Wow its Sheldon and"
  end

  scenario 'you have a pal' do
    sign_in_friend
    expect(page).to have_content "Wow its Sheldon and Leonard!"
  end
end
