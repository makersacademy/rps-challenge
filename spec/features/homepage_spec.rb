feature 'Homepage' do

  scenario "Can visit homepage which loads and displays a message" do
    visit("/")
    expect(page).to have_content("Rock, Paper, Scissors")
  end
  
end
