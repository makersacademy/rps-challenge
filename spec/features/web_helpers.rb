def enter_name_and_play
visit '/'
fill_in :name, with: "Tuyet"
click_button 'Play'
end 
