# Base image
FROM python:3.10

# Install Chrome
RUN apt-get update && apt-get install -y wget gnupg2
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update && apt-get install -y google-chrome-stable

# Setting Chrome Driver
RUN curl -sSL https://chromedriver.storage.googleapis.com/$(curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip -o chromedriver.zip
RUN unzip chromedriver.zip -d /usr/local/bin
RUN chmod +x /usr/local/bin/chromedriver

# Set up the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the required packages
RUN pip install -r requirements.txt

# Copy the project files
COPY . . 

# Set the default command to run the tests
CMD ["robot", "-d", "Test_Results", "Test_Object/UltimateQA/Testcases/"]