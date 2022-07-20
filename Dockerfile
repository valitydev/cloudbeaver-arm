FROM eclipse-temurin:11.0.14.1_1-jre-focal@sha256:ac8c2d965d9859a0df8f708c3470c2ce16fe2e9c3de4e672c5333a585b8c8f5a

COPY --from=dbeaver/cloudbeaver:21.3.3 /opt/cloudbeaver /opt/cloudbeaver

EXPOSE 8978

WORKDIR /opt/cloudbeaver/
ENTRYPOINT ["./run-server.sh"]
