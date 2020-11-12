FROM nginx:latest
RUN apt-get update && \
  apt-get install -y apt-utils \
  locales && \
  echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
# 初期状態の設定ファイル
ADD ./containers/deploy/nginx.conf /etc/deploy/nginx.conf
ADD ./containers/deploy/default.conf /etc/deploy/conf.d/default.conf
