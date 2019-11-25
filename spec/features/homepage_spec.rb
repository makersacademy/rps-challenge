feature 'Homepage' do
  scenario "Can visit homepage which displays message on loading" do
    visit('/')
    expect(page).to have_content("Rock.Paper.Scissors")
  end
end
