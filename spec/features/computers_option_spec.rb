feature "The computer chooses rock, paper or scissors" do
  scenario "computer chose rock" do
    sign_in_and_play
    visit '/play'
    click_button "rock"
    message = find_by_id("opponent").text
    expect(possible_messages).to include message
  end
end

def possible_messages
  [:rock, :paper, :scissors].map { |choice| "Your opponent chose #{choice.to_s}!" }
end
