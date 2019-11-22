feature 'Homepage' do

  scenario "Can visit homepage which loads and displays a message" do
    visit("/")
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end

  scenario "Can visit homepage which shows a form" do
    visit("/")
    expect(page).to have_content("To play, enter your names")
  end

end
