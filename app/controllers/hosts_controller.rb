class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new()
  end

  def create
    @host = Host.new(host_params)
    if @host.save
      redirect_to @host
    else
      render 'new'
    end
  end

  private
    def host_params
      params.require(:host).permit(:hostname, :macaddress, :ipaddress)
    end
end
