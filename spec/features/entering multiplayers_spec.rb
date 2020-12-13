feature "multiplayers" do
  before(:each) do
    visit '/'
  end

  scenario "people can choose two players" do
    expect(page).to have_content ('Enter number of players')
  end

end