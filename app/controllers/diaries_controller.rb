class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.create(diary_params)
    redirect_to diaries_path
  end

  private
    def diary_params
      params.require(:diary).permit(:writing_date, :title)
    end
end
