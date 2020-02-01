require 'csv'
require 'pry'

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
end