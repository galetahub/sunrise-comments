class CommentsController < ApplicationController
  before_filter :find_author
  before_filter :build_comment, :only => [:new, :create]
  before_filter :find_comment, :only => [:edit, :update, :destroy]
  
  authorize_resource
  
  respond_to :js, :only => [:create, :edit, :update, :destroy]
  
  cache_sweeper :comment_sweeper, :only => [:create, :update, :destroy]
  
  def new
    respond_with(@comment)
  end
  
  def create
    @comment.save
    respond_with(@comment, respond_options)
  end
  
  def edit
    respond_with(@comment)
  end
  
  def update
    @comment.update_attributes(params[:comment])
    respond_with(@comment, respond_options)
  end
  
  def destroy
    @comment.destroy
    respond_with(@comment, respond_options)
  end
  
  protected
    
    def find_author
      @author = current_user
    end
    
    def build_comment
      @comment = Comment.new(params[:comment])
      @comment.author = @author
      @comment
    end
    
    def find_comment
      @comment = Comment.find(params[:id])
    end
    
    def respond_options(options = {})
      options = { :location => root_path }.merge(options)
      
      if @comment.commentable
        options[:location] = polymorphic_path(@comment.commentable)
      end
      
      options
    end
    
    def current_ability
      @current_ability ||= ::Ability.new(@author)
    end
end
