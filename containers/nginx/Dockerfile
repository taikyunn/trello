FROM nginx:latest

# インクルード用のディレクトリ内を削除
RUN rm -f /etc/nginx/conf.d/*

# Nginxの設定ファイルをコンテナにコピー
ADD ./containers/nginx/default.conf /etc/nginx/conf.d/default.conf
# ADD ./containers/nginx/nginx.conf /etc/nginx/nginx.conf

# ビルド完了後にNginxを起動
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf