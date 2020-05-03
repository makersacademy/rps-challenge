
feature "Testing" do
  scenario "can run app and check page content" do
    visit ("/")
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end

feature "Enter name" do
  scenario "submitting name" do
    sign_in_and_play
    expect(page).to have_content "Kitty vs computer"
  end
end

feature "Instructions" do
  scenario "play route shows Instructions" do
    sign_in_and_play
    expect(page).to have_content "Choose rock, paper or scissors!"
  end
end

feature "Click buttons" do
  let(:game) { Game.new(player, computer) }
  let(:player) { double :player, name: "Kitty"}
  let(:computer) { double :computer, name: "Computer"}

  scenario "player can win" do
    allow_any_instance_of(Object).to receive(:rand).and_return(0.8)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Kitty wins"
  end

  scenario "computer can win" do
    allow_any_instance_of(Object).to receive(:rand).and_return(0.5)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "Computer wins"
  end

  scenario "draw" do
    allow_any_instance_of(Object).to receive(:rand).and_return(0.2)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "It's a draw!"
  end
end
