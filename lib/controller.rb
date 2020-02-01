require 'gossip'
require 'view'

class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params)
    gossip.save
  end

  def index_gossips
    @view.index_gossips(Gossip.all)
  end

  def destroy_gossip
    index_gossips
    gossip_id = @view.destroy_gossip
    Gossip.destroy(gossip_id)
  end
end