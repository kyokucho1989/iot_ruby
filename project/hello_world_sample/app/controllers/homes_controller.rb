class HomesController < ApplicationController
  # index アクションを定義
  def index
    @greet = "Hello World!!"

    # Userモデルをインスタンス化
    user = User.new
    # introduceメソッドを実行
    @my_introduce = user.introduce
  end
end
