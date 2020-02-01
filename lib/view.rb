class View
  def create_gossip
    print "So, what's your gossip about?\n> "
    content = gets.chomp

    print "And... Who are you?\n> "
    author = gets.chomp

    {author: author, content: content}
  end
end