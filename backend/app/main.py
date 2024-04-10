from fastapi import FastAPI
from sqlalchemy import create_engine, text
from fastapi.responses import JSONResponse

app = FastAPI()


# create SQLAlchemy engine
# change this to username and password of newly created user from dockerfile when containerizing
db_url = 'mysql+pymysql://sakila_user:sakila_password@database:3307/sakila'
engine = create_engine(db_url)

@app.get("/")
def root():
    return {"message": "Hello World"}

@app.get("/fetch-data")
def fetch_data():
    print("MADE IT HERE for fetch data")
    connection = engine.connect()
    query = text("SELECT CONCAT(customer.first_name, ' ', customer.last_name) as name, customer.email FROM customer JOIN address ON customer.address_id=address.address_id JOIN city ON address.city_id=city.city_id JOIN country ON city.country_id=country.country_id WHERE country.country = 'Canada' ORDER BY city.city;")
    result = connection.execute(query)

    rows = result.fetchall()
    column_names = list(result.keys())

    # make a dictionary from the rows
    data = [{column_names[i]: value for i, value in enumerate(row)} for row in rows]

    return JSONResponse(content=data)
