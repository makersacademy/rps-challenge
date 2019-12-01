feature 'Homepage' do

  scenario "visits the homepage" do
    visit '/'
    expect(page).to have_content("A game of Rock, Paper, Scissors")
  end

  scenario "can enter player's name" do
    visit "/"
    expect(page).to have_content("To play, enter your name:")
  end
end
