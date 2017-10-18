feature "request for marketeer to enter name on homepage" do

  scenario 'player can enter name' do
    visit '/'
    expect(page).to have_field("name")
  end

  scenario "vist homepage" do
    sign_in_page
    expect(page).to have_content "Rock Star Marketeer VS Game"
  end
end
