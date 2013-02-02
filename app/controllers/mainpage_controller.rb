class MainpageController < ApplicationController
  @member
  @comment
  
  def index
  end
  
  def aboutus
  end
  
  def charter
  end
  
  
  ############################################################
  ##########                 Member                 ##########
  ############################################################
  def joinus
    @member = Member.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member }
    end
  end
  
    def check_email
  #for email checking
  
    @member=Member.find_by_email(params[:member_email])     
    if @member      
      #json="\"#{params[:user_name]}\",false" 
        json="false"	  
    else
     # json="\"#{params[:user_name]}\",true"   
        json="true"	 
    end
	
    respond_to do |format|     
      format.js {render :text=>json}  
      end
  end
  
  def create_member
    @member = Member.new(params[:member])

    respond_to do |format|
      if @member.save 
        format.html { redirect_to mainpage_show_member_path(:id => @member.id), notice: 'Welcome to our family.'}
        format.json { render json: @member, status: :created, location: @member}
      else
        format.html { render action: "joinus" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_member
	@member = Member.find(params[:id])
  end
  
  
  ############################################################
  ##########                  Comment               ##########
  ############################################################
  def leavecomment
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end
  
  def create_comment
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to mainpage_show_comment_path(:id => @comment.id), notice: 'Comment was successfully sent to us. We appreciate your advice.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "leavecomment" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_comment
	@comment = Comment.find(params[:id])
  end
  
end
