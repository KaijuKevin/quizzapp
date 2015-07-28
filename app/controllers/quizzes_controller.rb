class QuizzesController < ApplicationController
	def index
		@quizzes = Quiz.all
	end

	def new
		@quiz = Quiz.new
	end

	def create
		@quiz = Quiz.new(quiz_params)
		if @quiz.save
			flash[:notice] = "Quiz successfully created"
			redirect_to quiz_path(@quiz)
		else
			flash[:alert] = "Quiz not created."
			render :new
		end
	end

	def show 
		@quiz = Quiz.find(params[:id])
		@questions = @quiz.questions.all
	end

	def edit
		@quiz = Quiz.find(params[:id])
	end

	def update
		@quiz = Quiz.find(params[:id])
		if @quiz.update(quiz_params)
			flash[:notice] = "Quiz successfully edited"
			redirect_to quiz_path(@quiz)
		else
			flash[:alert] = "Quiz not edited"
			render :edit
		end
	end

	def destroy
		@quiz = Quiz.find(params[:id])
		@quiz.destroy
		redirect_to quizzes_path
		flash[:alert] = "Quiz successfully deleted"
	end

	private

	def quiz_params
		params.require(:quiz).permit(:name, questions_attributes: [:id, :title, answers_attributes: [:id, :body]])
	end
end