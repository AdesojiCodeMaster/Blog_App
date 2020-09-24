class TagsController < 
  before_filter :require_login, only: [:destroy]
    def index
    @tags = Tag.all
    end

    def show
      @tag = Tag.find(params[:id])
    end
end
