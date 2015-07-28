class QuestionsController < ApplicationController
	def index
	end

	def new
		@quiz = Quiz.find(params[:quiz_id])
		@question = Question.new
	end

	def create
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.new(question_params)

		if @question.save
			flash[:notice] = "Question successfully added"
			redirect_to quiz_path(@quiz)
		else
			flash[:alert] = "Something went wrong"
			render :new
		end
	end

	def edit
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.find(params[:id])
	end

	def update
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.find(params[:id])
		if @question.update(question_params)
			flash[:notice] = "Question successfully edited"
			redirect_to quiz_path(@quiz)
		else
			flash[:alert] = "Something went wrong"
			render :new
		end
	end

	def show
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.find(params[:id])
	end

	def destroy
		@quiz = Quiz.find(params[:quiz_id])
		@question = @quiz.questions.find(params[:id])
		@question.destroy
		redirect_to quiz_path(@quiz)
		flash[:notice] = "Question successfully deleted"
	end

	private

	def question_params 
		params.require(:question).permit(:title, answers_attributes: [:id, :body])
	end
end