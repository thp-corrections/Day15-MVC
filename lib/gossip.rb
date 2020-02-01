require 'csv'

class Gossip
  attr_reader :author, :content
  DB_PATH = 'db/gossip.csv'

  def initialize(author:, content:)
    @author = author
    @content = content
  end

  def save
    CSV.open(DB_PATH, 'a') do |csv|
      csv << [@author, @content]
    end
  end

  class << self
    def all
      CSV.read(DB_PATH)
    end

    def destroy(id)
      remaining_gossips = all.each_with_object([]).with_index{ |(gossip, gossips), index| gossips << gossip unless index == id }
      CSV.open(DB_PATH, 'w') do |csv|
        remaining_gossips.each{ |gossip| csv << gossip }
      end
    end
  end
end