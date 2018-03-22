class MemberController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  

  # GET /member
  # GET /member.json
  def index
    @member = member.all
    puts "@DEBUG #{__FILE__}" 
  end

  # GET /member/1
  # GET /member/1.json
  def show
  end

  # GET /member/new
  def new
    @member = member.new
  end

  # GET /member/1/edit
  def edit
  end

  # member /member
  # member /member.json
  def create
    @member = member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member/1
  # PATCH/PUT /member/1.json
  def update
    respond_to do |format|
      if @member.update(post_params)
        format.html { redirect_to @member, notice: 'member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member/1
  # DELETE /member/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to member_url, notice: 'member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:caption, :first_name, :last_name)
    end
end
