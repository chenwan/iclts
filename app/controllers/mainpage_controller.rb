class MainpageController < ApplicationController
  def index
  end
  
  def aboutus
  end
  
  def charter
  end
  
  def joinus
    @member = Member.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member }
    end
  end
  
  def create_member
    @member = Member.new(params[:member])

    respond_to do |format|
      if @member.save 
        format.html { redirect_to mainpage_show_member_path, notice: 'Member was successfully created.'}
        format.json { render json: @member, status: :created, location: @member}
      else
        format.html { render action: "new" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_member
	#@member = Member.find(params[:id])
	#@member = Member.where("email = '" + "gw" + "'")

    #respond_to do |format|
    #  format.html # show.html.erb
    #  format.json { render json: @member }
    #end
  end
end
