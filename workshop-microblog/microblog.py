from app import app
from dotenv import load_dotenv
from os import getenv

a = load_dotenv()

print(a)


app.config['SECRET_KEY'] = getenv("SECRET_KEY")