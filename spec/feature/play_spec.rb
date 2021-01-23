feature 'Select Rock, Paper or Scissor' do

  before do
    visit('/')
    fill_in(:player_1_name, with: 'Oscar')
    click_button('Submit')
  end

  scenario 'present the choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissor'
  end

  scenario 'choose one option' do
    click_button('Rock')
    expect(page).to have_content 'You have selected Rock'
  end

  scenario 'computer chooses "Rock"' do
    click_button('Rock')
    message = find(:css, "#computer").text
    expect(computer_move).to include message
  end

  def computer_move
    [:Rock, :Paper, :Scissor].map { |option| "Computer has selected #{option.to_s}" }
  end

end
