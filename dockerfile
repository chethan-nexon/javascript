# 1️⃣ Use an official Node.js base image
FROM node:18

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy package.json first (good for caching)
COPY package*.json ./

# 4️⃣ Install dependencies (none here, but step is good practice)
RUN npm install

# 5️⃣ Copy rest of the application files
COPY . .

# 6️⃣ Expose the application port
EXPOSE 3000

# 7️⃣ Set default command to run the app
CMD ["node", "app.js"]
