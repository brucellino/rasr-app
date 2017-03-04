class GlibrariesController < ApplicationController
  before_action :set_glibrary, only: [:show, :edit, :update, :destroy]

  # GET /glibraries
  # GET /glibraries.json
  def index
    @glibraries = Glibrary.all
  end

  # GET /glibraries/1
  # GET /glibraries/1.json
  def show
  end

  # GET /glibraries/new
  def new
    @glibrary = Glibrary.new
  end

  # GET /glibraries/1/edit
  def edit
  end

  # POST /glibraries
  # POST /glibraries.json
  def create
    @glibrary = Glibrary.new(glibrary_params)

    respond_to do |format|
      if @glibrary.save
        format.html { redirect_to @glibrary, notice: 'Glibrary was successfully created.' }
        format.json { render :show, status: :created, location: @glibrary }
      else
        format.html { render :new }
        format.json { render json: @glibrary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glibraries/1
  # PATCH/PUT /glibraries/1.json
  def update
    respond_to do |format|
      if @glibrary.update(glibrary_params)
        format.html { redirect_to @glibrary, notice: 'Glibrary was successfully updated.' }
        format.json { render :show, status: :ok, location: @glibrary }
      else
        format.html { render :edit }
        format.json { render json: @glibrary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glibraries/1
  # DELETE /glibraries/1.json
  def destroy
    @glibrary.destroy
    respond_to do |format|
      format.html { redirect_to glibraries_url, notice: 'Glibrary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glibrary
      @glibrary = Glibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glibrary_params
      params.fetch(:glibrary, {})
    end
end
