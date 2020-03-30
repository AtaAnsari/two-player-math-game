require './player'

class Game
  # def test
  #   puts "IT WORKS!"
  # end
  def game_loop
    player_one = Player.new("P1")
    player_two = Player.new("P2")
    continue = true
    while continue do
        random_number1= rand(21)
        random_number2= rand(21)
        answer = random_number1 + random_number2
        if player_one.turn == true
          current_player = player_one
          other_player = player_two
        else 
          current_player = player_two
          other_player = player_one
        end
    
        puts "#{current_player.name}: What does #{random_number1} + #{random_number2} equal?"
        print "> "
        player_answer = gets.chomp
        if player_answer.to_i == answer
          puts "YES! You are correct!"
          puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
          puts "----- NEW TURN -----"
        elsif player_answer != answer
          puts "Seriously? No!"
          current_player.lives= current_player.lives - 1
          if current_player.lives > 0
            puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
            puts "----- NEW TURN -----"
          else
            puts "#{other_player.name} wins with a score of #{other_player.lives}/3"
            puts "----- GAME OVER -----"
            continue= false
          end
        end
        current_player.turn= false
        other_player.turn= true
    end
  end

end