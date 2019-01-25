def enter_name_and_start_playing
    visit '/'
    fill_in :firstname, with: 'Thomas'
    click_on('Start Playing!')
end
