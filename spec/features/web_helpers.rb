# feature "Register player 1 to the game" do
  # scenario "Expect player to enter name" do
  def sign_in_and_play
    visit('/')
    fill_in :player1, with: 'Rob'
    fill_in :player2, with: 'Jessicahhh'
    click_button 'Submit'
  end
  def sign_in_and_play_vs_cpu
    visit('/')
    fill_in :player1, with: 'Rob'
    fill_in :player2, with: ''
    click_button 'Submit'
  end
