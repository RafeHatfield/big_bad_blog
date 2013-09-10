class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]
	
	def index
  	@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
    @article = current_user.articles.build(article_params)
    if @article.save
    	flash[:success] = 'Article created.'
    	redirect_to article_path(@article)
    else
    	render 'new'
    end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

    redirect_to articles_path
	end

	def edit
	  @article = Article.find(params[:id])	
	end

	def update
	  @article = Article.find(params[:id])
	  if @article.update(article_params)
			flash.notice = "Article '#{@article.title}' Updated."
			redirect_to @article
		else
			render 'edit'
		end
	end

	private

	  def article_params
	    params.require(:article).permit(:title, :body)
	  end
end
