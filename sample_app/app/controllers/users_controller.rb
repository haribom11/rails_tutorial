class UsersController < ApplicationController

  def show
  @user = User.find(params[:id])
  end

  def new
  end

end


今日の反省

集中力が足りなくて、自分のコードとrailstutorialのコーどを見比べられていなかった

理解できるようにしましょう！
進捗は一言で表す！
