feature "should have options to click" do

  scenario "can select rock" do
    sign_in_and_play
    expect(page.has_button?('Rock')).to be_truthy
  end

  scenario "can select paper" do
    sign_in_and_play
    expect(page.has_button?('Paper')).to be_truthy
  end

  scenario "can select scissors" do
    sign_in_and_play
    expect(page.has_button?('Scissors')).to be_truthy
  end

end
