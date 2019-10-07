feature "It's the computer's turn" do
  scenario "computer chooses rock" do
    sign_in_and_play
    click_button "rock"
    message = find_by_id("opponent").text
    expect(possible_messages).to include message
  end

  scenario "the computer makes a random choice" do
    sign_in_and_play
    srand(6089)
    click_button "rock"
    expect(page).to have_content "Your opponent chose scissors!"
  end
end

def possible_messages
  [:rock, :paper, :scissors].map { |choice| "Your opponent chose #{choice}!" }
end
