def bottom_expectations
  expect(page).to have_link 'Play Again...'
  expect(page).to have_link 'Play Two Players...'
end

def choose_page
  @game.who_won == :draw ? :draw : :victory
end

def prelim_setup
  @player_1 = Player.new(params[:name1])
  @player_2 = Player.new(params[:name2]) unless params[:name2].nil?
  @player_2 = Ai.new if params[:name2].nil?
end

def set_up_the_game
  prelim_setup
  @game = Game.create(@player_1, @player_2)
  @game.player_1.choice = params[:weapon1].to_sym
  @game.player_2.choice = params[:weapon2].to_sym unless params[:name2].nil?
end

def expect_alert_box_warning_and_ok
  click_button 'Play!'
  page.driver.browser.switch_to.alert.accept
end
