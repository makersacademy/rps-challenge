=begin

describe 'Outcome page' do

  context "You win" do
    scenario 'displays the outcome of the battle' do
      sign_in_and_play
      click_button "I was born ready"
      choose("paper")
      click_button "Feeling pretty confident about this one"
      click_button "to the awards ceremony"
      expect(page).to have_content "It seems you got lucky this time! You WIN!"
    end
  end

  context "You draw" do
    scenario 'displays the outcome of the battle' do
      sign_in_and_play
      click_button "I was born ready"
      choose("paper")
      click_button "Feeling pretty confident about this one"
      click_button "to the awards ceremony"
      expect(page).to have_content "Great minds think alike. It's a draw!"
    end
  end

  context "You lose" do
    scenario 'displays the outcome of the battle' do
      sign_in_and_play
      click_button "I was born ready"
      choose("paper")
      click_button "Feeling pretty confident about this one"
      click_button "to the awards ceremony"
      expect(page).to have_content "Oh oh, that was a bit embarrassing! You LOSE!"
    end
  end


  scenario 'after seeing outcome, return to first page on click' do
    sign_in_and_play
    click_button "I was born ready"
    choose("paper")
    click_button "Feeling pretty good about myself right now"
    click_button "to the awards ceremony"
    allow(game).to receive(:the_winner_is).and_return(:stone)
    click_button "I want some more!"
    expect(page).to have_content "Enter names"
  end

end

=end
