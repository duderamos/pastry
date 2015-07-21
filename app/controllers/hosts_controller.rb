class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new()
  end
end
