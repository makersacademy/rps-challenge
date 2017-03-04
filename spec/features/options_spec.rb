feature "Selection page" do

  scenario "Lets the player choose 'Rock' option" do
    sign_in_and_play
    expect{choose('rock')}.to_not raise_error
  end

  scenario "Lets the player choose 'Paper' option" do
    sign_in_and_play
    expect{choose('paper')}.to_not raise_error
  end

  scenario "Lets the player choose 'Scissors' option" do
    sign_in_and_play
    expect{choose('scissors')}.to_not raise_error
  end

end
