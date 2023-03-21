class TodosController < ApplicationController

    def get_todos 
        render json: Todo.all,  Serializer: TodoSerializer, status: :ok
    end

    def create 
        # title = todos_params[:title]
        # description = todos_params[:description]
        # priority = todos_params[:priority]

        # # add todo in DB 

        # todo = Todo.create(title: title, description: description, priority: priority)
        # render json: todo

        todo = Todo.create(todos_params)
        if todo.valid?
            render json: todo, Serializer: TodoSerializer
        else 
            render json: todo.errors, status: :unprocessable_entity
        end


    end

    def update 
        id = params[:id]
        todo = Todo.find(id.to_i)
        todo.update(todos_params)
        render json: { message: "Updated successfully" }
    end

    def destroy
        todo = Todo.find(params[:id])
        todo.destroy
        head :no_content
    end
      


    private 

    def todos_params 
        params.permit(:title, :description, :priority, :status)
    end

end
