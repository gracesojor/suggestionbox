class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  
  def show
    @topic = Topic.find(params[:id])
  end
  
  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end
  
  def create 
    @topic = Topic.new(topic_params)
    @topic.save  
    
    redirect_to @topic
    
    #@topic = Topic.new(topic_params)
  end
  
  #Option 1:
   
   # @topic.save  
  #  redirect_to @topic
    
    
  #Option 2:
    
    # respond_to do |format|
    #   if @topic.save
    #     format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
    #     format.json { render :show, status: :created, location: @topic }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @topic.errors, status: :unprocessable_entity }
    #   end
    # end
    
  #end

  def update
    @topic = Topic.find(params[:id])
      if @topic.update(topic_params)
        redirect_to @topic
      else
        render 'edit'
      end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
 
    redirect_to topics_path
  end
  
  def upvote
    @topic = Topic.find(params[:id])
    @topic.votes.create
    redirect_to(topics_path)
  end

  private
    def topic_params
     params.require(:topic).permit(:title, :description)
    end
  
end





















