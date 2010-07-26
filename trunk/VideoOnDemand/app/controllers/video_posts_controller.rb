class VideoPostsController < ApplicationController
  # GET /video_posts
  # GET /video_posts.xml
  def index
    @video_posts = VideoPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @video_posts }
    end
  end

  # GET /video_posts/1
  # GET /video_posts/1.xml
  def show
    @video_post = VideoPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video_post }
    end
  end

  # GET /video_posts/new
  # GET /video_posts/new.xml
  def new
    @video_post = VideoPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video_post }
    end
  end

  # GET /video_posts/1/edit
  def edit
    @video_post = VideoPost.find(params[:id])
  end

  # POST /video_posts
  # POST /video_posts.xml
  def create
    @video_post = VideoPost.new(params[:video_post])

    respond_to do |format|
      if @video_post.save
        format.html { redirect_to(@video_post, :notice => 'VideoPost was successfully created.') }
        format.xml  { render :xml => @video_post, :status => :created, :location => @video_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /video_posts/1
  # PUT /video_posts/1.xml
  def update
    @video_post = VideoPost.find(params[:id])

    respond_to do |format|
      if @video_post.update_attributes(params[:video_post])
        format.html { redirect_to(@video_post, :notice => 'VideoPost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /video_posts/1
  # DELETE /video_posts/1.xml
  def destroy
    @video_post = VideoPost.find(params[:id])
    @video_post.destroy

    respond_to do |format|
      format.html { redirect_to(video_posts_url) }
      format.xml  { head :ok }
    end
  end
end
