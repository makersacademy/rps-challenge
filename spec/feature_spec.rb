describe "Features" do

  before(:each) do
    visit('/')
    fill_in :player1, with: 'Walter White'
    click_button 'Play'
  end

  it 'allows players to enter their names' do
    expect(page).to have_content 'Welcome, puny mortal Walter White'
  end

  it "computer picks rock, player picks scissors" do
    allow_any_instance_of(Class::Game).to receive(:get_computer_choice) do
      "rock"
    end 
    click_button 'SCISSORS'
    expect(page.has_css?('.fa-hand-scissors-o')).to eq true
    expect(page.has_css?('.fa-hand-rock-o')).to eq true
    expect(page).to have_content 'You have been defeated'

  end

  it "computer picks rock, player picks paper" do
    allow_any_instance_of(Class::Game).to receive(:get_computer_choice) do
      "rock"
    end 
    click_button 'PAPER'
    expect(page.has_css?('.fa-hand-rock-o')).to eq true
    expect(page.has_css?('.fa-hand-paper-o')).to eq true
    expect(page).to have_content 'Victory is yours'
  end

  # it "computer picks rock, player picks rock" do
  #   allow_any_instance_of(Class::Game).to receive(:get_computer_choice) do
  #     "rock"
  #   end 
  #   click_button 'ROCK'
  #   expect(page.has_css?('.fa-hand-rock-o')).to eq true
  #   expect(page).to have_content 'It\'s a tie'
  # end

end