feature "play game" do
  scenario "A player can play against the computer" do
    visit('/')
    fill_in :name, with: "Spidey"
    click_button("That's my name!")
    select "Rock", :from => "choose"
    click_button 'Submit'
    expect(page).to have_content 'Game Over'
  end
end
