class ClientsController < ApplicationController


   CLIENTS = {
    1 => { name: "Dortel", address: "Shoreditch, London", arrondissement: "2" },
    2 => { name: "Samba", address: "City, London", arrondissement: "4" }
  }


  def index
    if params[:arrondissement].blank?
      @clients = CLIENTS
    else
      @clients = CLIENTS.select do |id, client|
        client[:arrondissement] == params[:arrondissement]
      end
    end
  end

  def show
    id = params[:id].to_i
    @client = CLIENTS[id]
  end

  def create

  end
end
