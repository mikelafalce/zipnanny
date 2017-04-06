class SittingsController < ApplicationController
  before_action :set_sitting, only: [:show, :edit, :update, :destroy]

  
  def index
    @sittings = Sitting.all
  end

  def my_sittings
    @my_sittings = Sitting.where(parent_id: current_user.id) 
  end
  
  def show
  end

  def new
    @sitting = Sitting.new
  end

  
  def edit
  end

   
  def create
    @sitting = Sitting.new(sitting_params)
    respond_to do |format|
      if @sitting.save
        format.html { redirect_to @sitting, notice: 'Sitting was successfully created.' }
        format.json { render :show, status: :created, location: @sitting }
      else
        format.html { render :new }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @sitting.parent_id != current_user.id
       format.html { redirect_to @sitting, notice: 'Sorry, you may only edit your own sittings!' }
      elsif @sitting.update(sitting_params)
        format.html { redirect_to @sitting, notice: 'Sitting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitting }
      else
        format.html { render :edit }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @sitting.destroy
    respond_to do |format|
      format.html { redirect_to sittings_url, notice: 'Sitting was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sitting
      @sitting = Sitting.find(params[:id])
    end

    def sitting_params
      whitelisted = params.require(:sitting).permit(:start_time, :stop_time, :duration, :number_of_kids, :billed_amount)
      whitelisted.merge(parent_id: current_user.id.to_i)
    end
end
