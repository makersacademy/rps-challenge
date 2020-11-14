feature 'rock, paper, scisors' do
  scenario 'it has a field to fill in your entry' do
    visit '/'
    fill_in :name, with: "Sheldon"
    click_button "I'm ready!"
    expect(page).to have_content "So, rock, paper or scissors?"
  end
end
