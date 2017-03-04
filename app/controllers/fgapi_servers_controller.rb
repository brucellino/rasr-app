class FgapiServersController < ApplicationController
  before_action :set_fgapi_server, only: [:show, :edit, :update, :destroy]

  # GET /fgapi_servers
  # GET /fgapi_servers.json
  def index
    @fgapi_servers = FgapiServer.all
  end

  # GET /fgapi_servers/1
  # GET /fgapi_servers/1.json
  def show
  end

  # GET /fgapi_servers/new
  def new
    @fgapi_server = FgapiServer.new
  end

  # GET /fgapi_servers/1/edit
  def edit
  end

  # POST /fgapi_servers
  # POST /fgapi_servers.json
  def create
    @fgapi_server = FgapiServer.new(fgapi_server_params)

    respond_to do |format|
      if @fgapi_server.save
        format.html { redirect_to @fgapi_server, notice: 'Fgapi server was successfully created.' }
        format.json { render :show, status: :created, location: @fgapi_server }
      else
        format.html { render :new }
        format.json { render json: @fgapi_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fgapi_servers/1
  # PATCH/PUT /fgapi_servers/1.json
  def update
    respond_to do |format|
      if @fgapi_server.update(fgapi_server_params)
        format.html { redirect_to @fgapi_server, notice: 'Fgapi server was successfully updated.' }
        format.json { render :show, status: :ok, location: @fgapi_server }
      else
        format.html { render :edit }
        format.json { render json: @fgapi_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fgapi_servers/1
  # DELETE /fgapi_servers/1.json
  def destroy
    @fgapi_server.destroy
    respond_to do |format|
      format.html { redirect_to fgapi_servers_url, notice: 'Fgapi server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fgapi_server
      @fgapi_server = FgapiServer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fgapi_server_params
      params.fetch(:fgapi_server, {})
    end
end
