# Inspired by this reddit thread comment made by u/jubjubrsx
# https://www.reddit.com/r/oraclecloud/comments/yxlbxn/a_script_to_keep_always_free_instances_from_auto/


FROM alpine:3.20.2

# Create a non-root user
RUN adduser -D appuser

# Install necessary packages
RUN apk add --no-cache bash

# Copy the scheduling script
COPY run_sha1sum.sh /run_sha1sum.sh

# Make the script executable
RUN chmod +x /run_sha1sum.sh

# Switch to the non-root user
USER appuser

# Run the scheduling script
CMD ["/bin/bash", "/run_sha1sum.sh"]
