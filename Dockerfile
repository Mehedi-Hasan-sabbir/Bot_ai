# Python 3.11 ব্যবহার করছি
FROM python:3.11-slim

# ওয়ার্কডির তৈরি
WORKDIR /app

# dependency ফাইল কপি করো
COPY requirements.txt .

# প্যাকেজ ইনস্টল করো
RUN pip install --no-cache-dir -r requirements.txt

# প্রজেক্ট ফাইল কপি করো
COPY . .

# রানে কোন ফাইল চালাবে সেটা
CMD ["bash", "./start.sh"]
