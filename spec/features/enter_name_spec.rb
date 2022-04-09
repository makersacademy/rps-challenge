require_relative '../../app'

feature "#enter name" do
  scenario "the player can enter their name and see it" do
    visit '/'
    fill_in :name, with: "Joe"
    click_button 'Play!'
    expect(page).to have_content "Hello Joe!"
    expect(page).to have_content "Let's play rock paper scissors!"
  end
end
