class Mlblog::ArticlesController < Mlblog::ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    # GET /articles
    def index
      @articles = Mlblog::Article.all
    end

    # GET /articles/1
    def show
    end

    # GET /articles/new
    def new
      @article = Mlblog::Article.new
    end

    # GET /articles/1/edit
    def edit
    end

    # POST /articles
    def create
      @article = Mlblog::Article.new(article_params)

      if @article.save
        redirect_to edit_article_path(@article), notice: '記事の新規作成が完了しました'
      else
        render :new
      end
    end

    # PATCH/PUT /articles/1
    def update
      if @article.update(article_params)
        redirect_to edit_article_path(@article), notice: '記事の修正が完了しました'
      else
        render :edit
      end
    end

    # DELETE /articles/1
    def destroy
      @article.destroy
      redirect_to articles_url, notice: '記事の削除が完了しました'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Mlblog::Article.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def article_params
        params.require(:article).permit(:title, :url, :status, :category_id, :opened_at, :closed_at, :text)
				end
end
