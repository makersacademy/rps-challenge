feature 'play' do
  scenario 'User selects light saber' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_light_saber
    
  end

  scenario 'User selects blaster cannon' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_blaster_cannon
  end

  scenario 'User selects thermal detonator' do
    sign_into_game # see web_helper.rb
    play_page_content
    make_selection_thermal_detonator
  end

end
