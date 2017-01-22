#I would like to be able to play rock/paper/scissors
feature '#game' do
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


  xit "displays a random option" do
    visit('/')
    fill_in :player_1_name, with: 'Olwen'
    click_button "Submit name"
  end

  xit "displays a result" do

  end
end
