# ベースイメージ（Java 17）
FROM openjdk:17-jdk-slim

# 作業ディレクトリ
WORKDIR /app

# jar ファイルをコピー（ファイル名は生成された jar に合わせて）
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

# アプリケーションの起動コマンド
ENTRYPOINT ["java", "-jar", "app.jar"]

