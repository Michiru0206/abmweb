class DiariesController < ApplicationController
  # before_action :set_diaries, only: [:show, :edit, :update]
  # before_action :authenticate_user!, except: [:index ]
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

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.update(diary_params)
    redirect_to diaries_path
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path
  end

  def show
    @diary = Diary.find(params[:id])
  end

  private
    def diary_params
      params.require(:diary).permit(:writing_date, :title, :content)
    end
end
