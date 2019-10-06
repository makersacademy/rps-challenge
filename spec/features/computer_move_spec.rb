feature "Computer's move" do

  scenario "when computer chooses Rock, result page confirms this" do
    allow_any_instance_of(Object).to receive(:rand) { 0 }
    sign_in
    click_button "Rock"
    expect(page).to have_content "Computer's move: Rock"
  end

  scenario "when computer chooses Paper, result page confirms this" do
    allow_any_instance_of(Object).to receive(:rand) { 1 }
    sign_in
    click_button "Rock"
    expect(page).to have_content "Computer's move: Paper"
  end

  scenario "when computer chooses Scissors, result page confirms this" do
    allow_any_instance_of(Object).to receive(:rand) { 2 }
    sign_in
    click_button "Rock"
    expect(page).to have_content "Computer's move: Scissors"
  end

end
