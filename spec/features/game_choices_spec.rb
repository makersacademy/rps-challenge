feature "play choices available to the player" do

  scenario "user selects paper option" do
    computer_and_sign_on
    choose('rock')
    choose('paper')
    expect(find_field("paper")).to be_checked
    expect(find_field("scissors")).not_to be_checked
    expect(find_field("rock")).not_to be_checked
  end

  scenario "user selects rock option" do
    computer_and_sign_on
    choose('paper')
    choose('rock')
    expect(find_field("paper")).not_to be_checked
    expect(find_field("scissors")).not_to be_checked
    expect(find_field("rock")).to be_checked
  end

  scenario "user selects scissors option" do
    computer_and_sign_on
    choose('paper')
    choose('scissors')
    expect(find_field("paper")).not_to be_checked
    expect(find_field("scissors")).to be_checked
    expect(find_field("rock")).not_to be_checked
  end

end
