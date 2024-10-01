# Use an official Ubuntu image as a base
FROM ubuntu

# Install Postfix
RUN apt-get update && \
    apt-get install -y postfix

# Expose SMTP port
EXPOSE 25

# Start Postfix
CMD ["service", "postfix", "start"]