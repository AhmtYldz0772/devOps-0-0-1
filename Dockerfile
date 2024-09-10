# uygulamanın çalışması için jdk lazım
#FROM amazoncorretto
FROM openjdk:21

# projemizin jar dosyasının konumu yolunu belirtisiniz
ARG JAR_FILE=target/*.jar

#PROJENİN jar halini docker içine şu isimle kopyalar
COPY ${JAR_FILE} devops-hello-app.jar

# terminalde çalıştırmak istediğiniz komutları cmd ile kullaniyoruz
#CMD apt-get update -y

# iç portu sabitlemek için
EXPOSE 8080

# uygulamanın çalışacağı yer
ENTRYPOINT ["java","-jar","devops-hello-app.jar"]