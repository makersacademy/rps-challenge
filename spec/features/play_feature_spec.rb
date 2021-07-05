feature "play game" do
  context "A player can play against the computer" do
    scenario "and they can choose rock" do
      sign_in
      select "Rock", :from => "choose"
      click_button 'Submit'
      expect(page).to have_content 'Game Over'
    end

    scenario "and they can choose paper" do
      sign_in
      select "Paper", :from => "choose"
      click_button 'Submit'
      expect(page).to have_content 'Game Over'
    end

    scenario "and they can choose scissors" do
      sign_in
      select "Scissors", :from => "choose"
      click_button 'Submit'
      expect(page).to have_content 'Game Over'
    end
  end
end

def sign_in
  visit('/')
  fill_in :name, with: "Spidey"
  click_button("That's my name!")
end
