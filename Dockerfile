FROM public.ecr.aws/nginx/nginx:stable-alpine

# Copy the dist folder contents to Nginx HTML directory
COPY dist/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
