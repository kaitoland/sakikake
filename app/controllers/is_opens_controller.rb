class IsOpensController < ApplicationController
  before_action :set_is_open, only: [:show, :edit, :update, :destroy]

  # GET /is_opens
  # GET /is_opens.json
  def index
    @is_opens = IsOpen.all
  end

  # GET /is_opens/1
  # GET /is_opens/1.json
  def show
  end

  # GET /is_opens/new
  def new
    @is_open = IsOpen.new
  end

  # GET /is_opens/1/edit
  def edit
  end

  # POST /is_opens
  # POST /is_opens.json
  def create
    @is_open = IsOpen.new(is_open_params)

    respond_to do |format|
      if @is_open.save
        format.html { redirect_to @is_open, notice: 'Is open was successfully created.' }
        format.json { render :show, status: :created, location: @is_open }
      else
        format.html { render :new }
        format.json { render json: @is_open.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /is_opens/1
  # PATCH/PUT /is_opens/1.json
  def update
    respond_to do |format|
      if @is_open.update(is_open_params)
        format.html { redirect_to @is_open, notice: 'Is open was successfully updated.' }
        format.json { render :show, status: :ok, location: @is_open }
      else
        format.html { render :edit }
        format.json { render json: @is_open.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /is_opens/1
  # DELETE /is_opens/1.json
  def destroy
    @is_open.destroy
    respond_to do |format|
      format.html { redirect_to is_opens_url, notice: 'Is open was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_is_open
      @is_open = IsOpen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def is_open_params
      params.require(:is_open).permit(:user_id, :age, :join_team, :join_project, :comment)
    end
end
