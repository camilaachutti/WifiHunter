class PreysController < ApplicationController
  # GET /preys
  # GET /preys.json
  def index
    @preys = Prey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preys }
    end
  end

  # GET /preys/1
  # GET /preys/1.json
  def show
    @prey = Prey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prey }
    end
  end

  # GET /preys/new
  # GET /preys/new.json
  def new
    @prey = Prey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prey }
    end
  end

  # GET /preys/1/edit
  def edit
    @prey = Prey.find(params[:id])
  end

  # POST /preys
  # POST /preys.json
  def create
    @prey = Prey.new(params[:prey])

    respond_to do |format|
      if @prey.save
        format.html { redirect_to @prey, notice: 'Prey was successfully created.' }
        format.json { render json: @prey, status: :created, location: @prey }
      else
        format.html { render action: "new" }
        format.json { render json: @prey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /preys/1
  # PUT /preys/1.json
  def update
    @prey = Prey.find(params[:id])

    respond_to do |format|
      if @prey.update_attributes(params[:prey])
        format.html { redirect_to @prey, notice: 'Prey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preys/1
  # DELETE /preys/1.json
  def destroy
    @prey = Prey.find(params[:id])
    @prey.destroy

    respond_to do |format|
      format.html { redirect_to preys_url }
      format.json { head :no_content }
    end
  end
  def search
    if params{:query}.blank?
      @results=[]
    else
      @results=Prey.where(:country=>params[:query])
      @results.concat(Prey.where(:state=>params[:query]))
      @results.concat(Prey.where(:city=>params[:query]))
      @results.concat(Prey.where(:place=>params[:query]))
      @results.uniq!
    end
  end
end
