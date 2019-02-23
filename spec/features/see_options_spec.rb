feature "Marketeer is presented with 3 choices rock, paper or scissors" do
  scenario "ask marketeer to choose one option" do
    sign_in_and_play
    expect(page).to have_content "Choose: rock, paper or scissors?"
    end
  end
