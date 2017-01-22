def name_and_submit
	visit('/')
	fill_in('p1_name', with: "Mabel")
	click_button('submit')
end