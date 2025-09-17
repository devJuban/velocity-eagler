FROM eclipse-temurin:17-jdk-jammy
COPY . .
RUN chmod +x main.sh
CMD ["./main.sh"]