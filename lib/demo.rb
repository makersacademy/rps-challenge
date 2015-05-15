# p1 = $stdin.gets.chomp
# cpu = ["Rock", "Paper", "Scissors"].sample
# p p1
# p cpu

p1_wins_counter = 0
cpu_wins_counter = 0

  until p1_wins_counter >= 2 || cpu_wins_counter >= 2
    p1 = $stdin.gets.chomp
    cpu = ["Rock", "Paper", "Scissors"].sample
    p p1
    p cpu

    if p1 == cpu
      puts "Go again"
    else
      if p1 == "Rock" && cpu == "Scissors"
        puts "You win"
        p1_wins_counter += 1
      elsif p1 == "Rock" && cpu == "Paper"
        puts "CPU wins"
        cpu_wins_counter += 1
      elsif p1 == "Scissors" && cpu == "Paper"
        puts "You win"
        p1_wins_counter += 1
      elsif p1 == "Scissors" && cpu == "Rock"
        puts "CPU wins"
        cpu_wins_counter += 1
      elsif p1 == "Paper" && cpu == "Rock"
        puts "You win"
        p1_wins_counter += 1
      elsif p1 == "Paper" && cpu == "Scissors"
        puts "CPU win"
        cpu_wins_counter += 1
      end
    end
  end



# Rock, Paper, Scissors logic/ steps (UI)

# >> Player 1 enter name and gets name stored
# >> Player 1 can select Rock, Paper or Scissors
  # >> Start with one game e.g. one round and winner, moves to best of 3 e.g. game counter
# >> Computer selects Rock, Paper or Scissors (same time)
#   >> if selection == selection >> go again
#   >> if scisscors vs paper >> P1 win
#   >> elsif scissors vs rock >> CPU win

    # >> if rock vs scissors >> P1 win
    # >> elsif rock vs paper >> CPU win
    # >> if paper vs rock >> P1 win
    # >> if paper vs scissors >> CPU win
