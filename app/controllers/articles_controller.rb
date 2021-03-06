class ArticlesController < ApplicationController
    # before_action :set_article, only: [:show, :edit, :update, :destroy]
    def index
        @articles = Article.all
    end
    def show
        @article = Article.find(params[:id])
    end
    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
        
    end
    def create
        @article = Article.new(user_params)
        if @article.save
            flash[:notice] = "Article was created successfully." #success message for creating an article flash[:notice] flash[:alert]
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end
    def update
        @article = Article.find(params[:id])
        if @article.update(user_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to article_path(@article)
        else
            render 'edit'
        end

    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    
    private

    def user_params #only accepts these fields for the user to submit
        params.require(:article).permit(:title, :description)
    end
    def set_article
        @article = Article.find(params[:id])
    end
end
