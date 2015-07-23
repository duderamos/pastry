class HostsController < ApplicationController
  def index
  end

  def show
    @host = Host.find(params[:id])
  end

  def list
    @hosts = Host.all
  end

  def new
    @host = Host.new()
  end

  def edit
    @host = Host.find(params[:id])
  end

  def create
    @host = Host.new(host_params)

    if @host.save
      redirect_to @host
    else
      render 'new'
    end
  end

  def update
    @host = Host.find(params[:id])

    if @host.update(host_params)
      redirect_to @host
    else
      render 'edit'
    end
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy

    redirect_to hosts_list_path
  end

  private
    def host_params
      params.require(:host).permit(:hostname, :macaddress, :ipaddress)
    end
end
