FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.1

# プラグインのインストール
RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install analysis-kuromoji

# ローカルでの開発・テスト用の設定を追加
ENV network.host 0.0.0.0
ENV xpack.graph.enabled false
ENV xpack.monitoring.enabled false
ENV xpack.security.enabled false
ENV xpack.watcher.enabled false
