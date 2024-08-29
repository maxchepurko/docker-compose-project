import psycopg2
import os

def get_min_max_age():
    conn = psycopg2.connect(
        dbname=os.getenv('POSTGRES_DB'),
        user=os.getenv('POSTGRES_USER'),
        password=os.getenv('POSTGRES_PASSWORD'),
        host=os.getenv('POSTGRES_HOST'),
    )
    cur = conn.cursor()
    cur.execute("""
        SELECT MIN(age), MAX(age)
        FROM test_table
        WHERE LENGTH(name) < 6;
    """)
    result = cur.fetchone()
    print(f"Минимальный возраст: {result[0]}, Максимальный возраст: {result[1]}")
    cur.close()
    conn.close()

if __name__ == "__main__":
    get_min_max_age()