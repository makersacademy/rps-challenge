feature 'rock, paper, scisors' do
  before do
    srand(12256424)
    sign_in
  end

  scenario 'it has a field to fill in your entry' do
    expect(page).to have_content "So, rock, paper or scissors?"
  end

  scenario "you can enter rock" do
    click_link "Rock"
    expect(page).to have_content "You Drew!"
  end

  scenario "you can enter paper" do
    click_link "Paper"
    expect(page).to have_content "You Won!"
  end

  scenario "you can enter scissors" do
    click_link "Scissors"
    expect(page).to have_content "You Won!"
  end

  scenario "after playing you can replay" do
    click_link "Rock"
    click_link "Play Again!"
    expect(page).to have_content "Well hey there Sheldon!"
  end
end
