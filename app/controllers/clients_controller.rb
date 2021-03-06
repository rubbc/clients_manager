class ClientsController < ApplicationController

  before_action :set_client, only: [:show, :edit, :update, :destroy]


  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new

  end

  def create
    client = Client.create(client_params)
    redirect_to client_path(client)
  end

  def edit
  end

  def update
    @client.update(client_params)
    redirect_to clients_path
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  def set_client
    @client = Client.find(params[:id])
  end

  private

  def client_params
    params.require(:client).permit(:name, :address, :arrondissement)
  end
end
