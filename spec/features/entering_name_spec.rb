feature 'Entering name' do
  scenario "Player can enter their name" do
    visit ('/')
    fill_in :name, with: "Bob"
    click_button('Play!')
    expect(page).to have_content("Hi Bob! Let's play Rock Paper Scissors!")
  end
end
