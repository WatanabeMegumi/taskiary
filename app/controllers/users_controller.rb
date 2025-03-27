class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @posts = @user.posts.includes(:actual_time).order(created_at: :desc)

    # 自己紹介
    @profile = @user.profile

    # 累計時間（全ポストの実測時間の合計）
    @total_minutes = @user.posts.joins(:actual_time).sum("actual_times.actual_time") / 60

    # 今日から過去6日間のラベル（日付）と日ごとの合計時間（分）
    end_date = Date.today
    start_date = end_date - 6
    week_range = (start_date..end_date).to_a  # ← ここを追加！

    # 各日付の初期値（0）を設定
    daily_minutes = week_range.map { |date| [date, 0] }.to_h

    # 対象範囲のポストを取得
    recent_posts = @user.posts.joins(:actual_time)
      .where(created_at: start_date.beginning_of_day..end_date.end_of_day)

    # 日ごとに実測時間を合計
    recent_posts.each do |post|
      date = post.created_at.to_date
      daily_minutes[date] += (post.actual_time.actual_time / 60.0).floor
    end

    # グラフ表示用
    @weekly_labels = week_range.map { |date| date.strftime("%Y-%m-%d") }
    @weekly_minutes = daily_minutes.values
    @weekly_total_minutes = @weekly_minutes.sum

    # グラフ上部に表示する週の範囲（例：3/21〜3/27）
    @week_range = "#{start_date.strftime('%-m/%-d')}〜#{end_date.strftime('%-m/%-d')}"
  end
end
