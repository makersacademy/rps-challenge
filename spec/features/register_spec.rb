feature "registers name" do
  let(:name) { double "Player Name" }
  scenario "enter name in form and see it during game" do
    sign_in(name)
    expect(page).to have_content(/name/i)
  end
end
