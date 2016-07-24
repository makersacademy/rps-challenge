describe 'Outcome page' do

# Ambiguous tests due to the "choose("player_1_weapon") thing.

=begin
  context "You win" do
    scenario 'displays the outcome of the battle' do
      sign_in_and_play
      click_button "I was born ready"
      choose("player_1_weapon")
      click_button "Feeling pretty good about myself right now"
      click_button "..."
      expect(page).to have_content "It seems you got lucky this time!"
    end
  end

  context "You lose" do
    scenario 'displays the outcome of the battle' do
      sign_in_and_play
      click_button "I was born ready"
      choose("player_1_weapon")
      click_button "Feeling pretty good about myself right now"
      click_button "..."
      expect(page).to have_content "Oh oh, someone sucks at RPS!"
    end
  end


  scenario 'after seeing outcome, return to first page on click' do
    sign_in_and_play
    click_button "I was born ready"
    choose("player_1_weapon")
    click_button "Feeling pretty good about myself right now"
    click_button "..."
    click_button "I want some more!"
    expect(page).to have_content "Enter names"
  end
=end
end
