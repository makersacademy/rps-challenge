#I would like to be able to play rock/paper/scissors
feature '#game form' do
  before do
    visit('/')
    fill_in :name, with: 'Olwen'
    click_button "Submit name"
  end
  it "presents choices (rock, paper, scissors)" do
    expect(page).to have_button'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  it "lets user make a choice" do
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end

  it "displays a randomnly generated option"  do
    message = find(:css, "#option").text
    expect(poss_messages).to include message
  end

  def poss_messages
    [:rock, :paper, :scissors].map { |option| "Opponent chose #{option.to_s.capitalize}!"}
  end

  xit "displays a result and a winner" do

  end
end
