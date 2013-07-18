class TranscationsController < ApplicationController
  # GET /transcations
  # GET /transcations.json
  def index
    @transcations = Transcation.all
@transaction_sums = current_user.transcations.select("created_at, SUM(amount) as amount").group("date(created_at)").order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transcations }
    end
  end

  # GET /transcations/1
  # GET /transcations/1.json
  def show
  
    @transcation = Transcation.find(params[:id])
    
    #   @transcation_dc= Transcation.all(:select => "created_at, SUM(amount) amount",:group => "DATE(created_at)", :order => "created_at") 
  

  
  
          


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transcation }
    end
  end

  # GET /transcations/new
  # GET /transcations/new.json
  def new
    @transcation = Transcation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transcation }
    end
  end

  # GET /transcations/1/edit
  def edit
    @transcation = Transcation.find(params[:id])
  end

  # POST /transcations
  # POST /transcations.json
  def create
    
    @transcation = current_user.transcations.create(:amount => params[:transcation][:amount], :title => params[:transcation][:title])

    respond_to do |format|
      if @transcation.save
        format.html { redirect_to @transcation, notice: 'Transcation was successfully created.' }
        format.json { render json: @transcation, status: :created, location: @transcation }
      else
        format.html { render action: "new" }
        format.json { render json: @transcation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transcations/1
  # PUT /transcations/1.json
  def update
    @transcation = Transcation.find(params[:id])

    respond_to do |format|
      if @transcation.update_attributes(params[:transcation])
        format.html { redirect_to @transcation, notice: 'Transcation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transcation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcations/1
  # DELETE /transcations/1.json
  def destroy
    @transcation = Transcation.find(params[:id])
    @transcation.destroy

    respond_to do |format|
      format.html { redirect_to transcations_url }
      format.json { head :no_content }
    end
  end
end
