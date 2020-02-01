class View
  def create_gossip
    print "So, what's your gossip about?\n> "
    content = gets.chomp

    print "And... Who are you?\n> "
    author = gets.chomp

    {author: author, content: content}
  end

  def index_gossips(gossips)
    gossips.each_with_index do |gossip, index|
      puts "[#{index}] #{gossip[0]}: #{gossip[1]}"
    end
  end

  def destroy_gossip
    print "Which one would you like to obliterate?\n> "
    gets.chomp.to_i
  end
end