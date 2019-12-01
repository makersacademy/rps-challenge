feature 'Homepage' do

  scenario "visits the homepage" do
    visit '/'
    expect(page).to have_content("A game of Rock, Paper, Scissors")
  end
end
