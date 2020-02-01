require 'controller'

class Router
  MAIN_MENU = <<-MENU
Choose your destiny :
1. Write a gossip
2. Look at all the gossips
3. Delete a gossip, for good...
4. Leave this place
MENU
  def initialize
    @controller = Controller.new
  end

  def perform
    puts '----| The Gossip Project |----'

    loop do
      puts MAIN_MENU
      print '> '
      params = gets.chomp.to_i

      case params
      when 1
      when 3
      when 2
      when 4
        puts 'You carefully exit the program.'
        break
      else
        puts 'This is not an option...'
      end
    end
  end
end