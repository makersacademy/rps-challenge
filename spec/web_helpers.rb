def enter_name_play
	visit "/"
	fill_in :name, :with => "Jeff"
	click_button "PLAY!"
end