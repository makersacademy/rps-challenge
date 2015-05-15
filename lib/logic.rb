module Logic

  def result p1_choice, p2_choice
    if p1_choice == p2_choice
      'Start over'
    elsif p1_choice
    end
  end

end

  # def total items
  #   items.map(&:values).flatten.inject { |sum, x| sum + x }
  # end

  # def display_order dishes
  #   receipt = []
  #   dishes.each do |h|
  #     h.each { |k, v| receipt << "#{k} @ £#{v} x #{dishes.map(&:keys).flatten.count(k)}" }
  #   end
  #   "#{receipt.uniq}; TOTAL: £#{total dishes}"
  # end