# frozen_string_literal: true

require_relative 'android_screens'

class DroidScreens
  attr_accessor :transferp2p

  def initialize
    @transferp2p = Android::TransferPeer2Peer.new
  end
end
