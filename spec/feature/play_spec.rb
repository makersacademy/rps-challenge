require_relative './lib/computer_move.rb'

feature 'playing a game of RPS' do

  scenario 'be able to see the move options' do
      sign_in_and_play
      expect(page).to have_button("Rock")
      expect(page).to have_button("Paper")
      expect(page).to have_button("Scissors")
  end

  scenario 'choose a move to play' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Sean you selected Rock!")
  end

  scenario 'the computer chooses "Rock"' do
    sign_in_and_play
    click_button 'Rock'
    # message = find(:css, "#computer").text
    # expect(possible_moves).to include(message)
    allow(session[:computer_move]).to receive(Computer.new.move).and_return(:rock)
    expect(page).to have_content('The computer selected Rock!')
  end

  def possible_moves
    [:rock, :paper, :scissors].map { |move| "The computer selected #{ move.to_s.capitalize }!"}
  end
end
