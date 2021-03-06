class Mlblog::CategoriesController < Mlblog::ApplicationController

    before_action :set_category, only: [:show, :edit, :update, :destroy]

    # GET /categories
    def index
      @categories = Mlblog::Category.all
    end

    # GET /categories/1
    def show
    end

    # GET /categories/new
    def new
      @category = Mlblog::Category.new
    end

    # GET /categories/1/edit
    def edit
    end

    # POST /categories
    def create
      @category = Mlblog::Category.new(category_params)

      if @category.save
        redirect_to edit_category_path(@category), notice: 'カテゴリの新規作成が完了しました'
      else
        render :new
      end
    end

    # PATCH/PUT /categories/1
    def update
      if @category.update(category_params)
        redirect_to edit_category_path(@category), notice: 'カテゴリの修正が完了しました'
      else
        render :edit
      end
    end

    # DELETE /categories/1
    def destroy
      @category.destroy
      redirect_to categories_url, notice: 'カテゴリの削除が完了しました'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Mlblog::Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name, :slug, :status, :parent_id, :lft, :rgt, :depth, :children_count)
			end
end
